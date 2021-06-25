https://virtualizationreview.com/articles/2020/05/21/ssh-server-on-windows-10.aspx

`Get-Service sshd` ← sshd is the OpenSSH service
`Start-Service sshd` ← Starts the sshd service
`Get-Service sshd` ← Verifies that the sshd service is running

I wanted the SSH service to start every time the system booted up, I entered:

```
Set-Service -Name sshd -StartupType 'Automatic'
```

To check and make sure that the port for the SSH server was open, I entered:

```
    Get-NetFirewallRule -Name *ssh*
```

check SSH server was operational by connecting to the Windows system that I was currently on by going back to the command console and entering:

```
    ssh fenton@localhost
```

check that the firewalls for my SSH server was correctly configured by going to another Windows 10 machine and verify that I was able to SSH to this system by entering:

```
    ssh fenton@10.0.0.167
```

I verified that I was able to copy a file from a remote system to my local system by entering:
```
    scp fenton@10.0.0.167:/TestFile CopyOfFile
```

https://dev.to/zduey/how-to-set-up-an-ssh-server-on-a-home-computer


https://helpdeskgeek.com/windows-10/how-to-remotely-wake-up-your-windows-10-pc/

https://silo.tips/download/how-to-use-remote-desktop-over-a-secure-connection-ssh


putty

https://www.youtube.com/watch?v=IDqQIDL3LKg

https://www.youtube.com/watch?v=AtuAdk4MwWw *****
