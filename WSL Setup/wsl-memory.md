wsl -l -v to check out all running distros on your WSL.

wsl -t {insert distro}   TERMINATES


WSL does use a really low amount of RAM but it is allocated about 4GB by default when it is started. If you think that’s too much and would like to decrease it, Windows Insider Build 18945 brough customizable settings for wsl.

Create a %UserProfile%\.wslconfig file and use it to limit memory assigned to WSL2 VM.



In Linux, we used the
free -h
command to output the amount of used and cached memory.
