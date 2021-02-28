This will save your current prompt config to a variable

DEFAULT=$PS1

then you can experiment:

PS1="\u\$ "

PS1="\u:\w\$ "

Go back to original

PS1=$DEFAULT


preffered:

PS1="\u\w\$ "

with color:

PS1="\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ " 


A bell character: \a
The date, in “Weekday Month Date” format (e.g., “Tue May 26”): \d
The format is passed to strftime(3) and the result is inserted into the prompt string; an empty format results in a locale-specific time representation. The braces are required: \D{format}
An escape character: \e
The hostname, up to the first ‘.’: \h
The hostname: \H
The number of jobs currently managed by the shell: \j
The basename of the shell’s terminal device name: \l
A newline: \n
A carriage return: \r
The name of the shell, the basename of $0 (the portion following the final slash): \s
The time, in 24-hour HH:MM:SS format: \t
The time, in 12-hour HH:MM:SS format: \T
The time, in 12-hour am/pm format: \@
The time, in 24-hour HH:MM format: \A
The username of the current user: \u
The version of Bash (e.g., 2.00): \v
The release of Bash, version + patchlevel (e.g., 2.00.0): \V
The current working directory, with $HOME abbreviated with a tilde (uses the $PROMPT_DIRTRIM variable): \w
The basename of $PWD, with $HOME abbreviated with a tilde: \W
The history number of this command: \!
The command number of this command: \#
If the effective uid is 0, #, otherwise $: \$
The character whose ASCII code is the octal value nnn: \nnn
A backslash: \\
Begin a sequence of non-printing characters. This could be used to embed a terminal control sequence into the prompt: \[
End a sequence of non-printing characters: \]