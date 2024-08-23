https://linuxhint.com/install-nvidia-drivers-on-fedora-35/

lspci | egrep 'VGA'

01:00.0 VGA compatible controller: NVIDIA Corporation TU106 [GeForce GTX 1650] (rev a1)

By default, Fedora 35 will use the open-source Nouveau drivers

lsmod | grep nouveau
lsmod | grep nvidia

sudo dnf update

With RPM Fusion repos (see fedora-setup)

sudo dnf install akmod-nvidia

reboot

should see the  NVIDIA X Server Settings app available

also see that the nvidia drivers are used

lsmod | grep nouveau
lsmod | grep nvidia