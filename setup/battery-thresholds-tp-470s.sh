#!/bin/bash

# This script sets the battery charge thresholds on a ThinkPad T470s running
# Fedora 37.

# The thresholds are set to prolong the life of the battery.

# This may be applicable to other ThinkPad models and other Linux distributions.

# Note: This script may become obsolete in the future if the kernel gains native
# support for setting thresholds. The latest versions of the kernel do, but
# this distribution doesn't have a version that supports it.

LOW=70
HIGH=100

# Check if ThinkPad
if [[ $(dmidecode -s system-manufacturer) != "LENOVO" ]]; then
  echo "This script is only for ThinkPads."
  exit 1
fi

# Check if sudo
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root."
  exit 1
fi

# Get optional command line args to override $LOW and $HIGH
if [[ $# -eq 2 ]]; then
  $LOW=$1
  $HIGH=$2
fi

# Check that command line args are numbers between 40 and 100
if [[ $LOW -lt 40 || $LOW -gt 100 || $HIGH -lt 40 || $HIGH -gt 100 ]]; then
  echo "Invalid command line arguments."
  exit 1
fi

Install tpacpi-bat
echo "Installing tpacpi-bat..."
dnf install kernel-devel -y
mkdir -p ~/opt
cd ~/opt
git clone https://github.com/teleshoes/tpacpi-bat.git
cd tpacpi-bat
./install.pl
cd ~

# Create systemd service file
echo "Creating systemd service file..."
cat <<EOT > /etc/systemd/system/tpacpi-bat-thresholds.service
[Unit]
Description=Set ThinkPad battery charge thresholds
After=multi-user.target

[Service]
Type=oneshot
ExecStart=/usr/bin/tpacpi-bat/tpacpi-bat -s SP 1 $HIGH
ExecStart=/usr/bin/tpacpi-bat/tpacpi-bat -s ST 2 $LOW
ExecStart=/usr/bin/tpacpi-bat/tpacpi-bat -s ST 1 $LOW
ExecStart=/usr/bin/tpacpi-bat/tpacpi-bat -s SP 2 $HIGH

[Install]
WantedBy=multi-user.target
EOT

# Enable and start the service
echo "Enabling and starting the systemd service..."
# May need to restore context of file
sudo restorecon /etc/systemd/system/tpacpi-bat-thresholds.service
# May need to reload daemon
systemctl daemon-reload
systemctl enable tpacpi-bat-thresholds.service
systemctl start tpacpi-bat-thresholds.service

# Display the status of the service
echo "Displaying the status of the service..."
systemctl status tpacpi-bat-thresholds.service
