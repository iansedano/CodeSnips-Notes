To allow traffic on port 8000, you need to add a rule to the firewall. Use the following command:

```bash
sudo firewall-cmd --zone=public --add-port=8000/tcp --permanent
```

This command adds a rule to allow TCP traffic on port 8000 in the `public` zone, which is the default zone for most Fedora systems.

**Reload `firewalld`**: After adding the rule, reload `firewalld` to apply the changes:

```bash
sudo firewall-cmd --reload
```

**Verify the Rule**: Ensure that the rule has been added correctly:

```bash
sudo firewall-cmd --zone=public --list-ports
```

This command should show `8000/tcp` among the listed ports if it was added successfully.

**Open Port 8000 Temporarily**: Execute the following command to open port 8000 only for the current session:

```bash
sudo firewall-cmd --zone=public --add-port=8000/tcp
```

This command will open the TCP port 8000 in the `public` zone, but the change won't persist after a reboot or a restart of the `firewalld` service.

**Closing the Port Manually (Optional)**: If you want to close the port before restarting or stopping the `firewalld` service, you can remove it with:

```bash
sudo firewall-cmd --zone=public --remove-port=8000/tcp
```
