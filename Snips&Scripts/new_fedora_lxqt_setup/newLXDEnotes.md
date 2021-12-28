Keyboard Shortcuts

```
~/.config/openbox/lxde-rc.xml
```

```
!-- Launch LXTerminal with Ctrl+Alt+t-->
    <keybind key="C-A-t">
      <action name="Execute">
        <command>lxterminal</command>
      </action>
    </keybind>
```

For touchpad tap to click:
  
https://wiki.archlinux.org/index.php/Libinput#Touchpad_configuration

create:  

    /etc/X11/xorg.conf.d/30-touchpad.conf  

content:  

    Section "InputClass"   
      Identifier "touchpad"  
      Driver "libinput"  
      MatchIsTouchpad "on"  
      Option "Tapping" "on"  
    EndSection

and finally  

    reboot


git@github.com:rupa/z.git
git@github.com:iansedano/CodeSnips-Notes.git
git@github.com:iansedano/linux_configs.git


edit `/etc/dnf/dnf.conf` and add `fastestmirror=true` `max_parallel_downloads=10`


sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh

