
# possible git speedup

	git config --global core.preloadindex true
	git config --global core.fscache true
	git config --global gc.auto 256

Other fix

My Windows home directory is on the network, and I suspected that Git Bash commands were looking there first. Sure enough, when I looked at $PATH, it listed /h/bin first, where /h is a share on a Windows file server, even though /h/bin doesn't exist.

I edited /etc/profile and commented out the export command that puts it first in $PATH:

'  #export PATH="$HOME/bin:$PATH"  

This made my commands run much faster, probably because Git Bash is no longer looking across the network for the executables. My /etc/profile was c:\Program Files (x86)\Git\etc\profile.


I had the same issue. I changed HOME="$(cd "$HOME" ; pwd)" to HOME="$(cd "$USERPROFILE" ; pwd)", and now everything is blazingly fast. Thanks for the tip. – Jon Sagara Oct 6 '11 at 18:06

I was successful using a variation of this: in the profile, force $HOME to $USERPROFILE, removing the $HOMEDRIVE reference. Also on the properties of the Git Bash shortcut, set "Start In" to %USERPROFILE% – Aidan Ryan Dec 7 '11 at 21:24

https://github.com/msysgit/msysgit/wiki/Diagnosing-why-Git-is-so-slow