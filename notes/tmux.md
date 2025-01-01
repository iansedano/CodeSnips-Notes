http://linuxcommand.org/lc3_adv_termmux.php

invocation
tmux new -s "my session" -n "window 1"

Multiple Windows

tmux uses the keyboard in a similar fashion to screen, but rather than using Ctrl-a as the command prefix, tmux uses Ctrl+b by default. This is good since Ctrl-a is used when editing the command line in bash to move the cursor to the beginning of the line.

Here are the basic commands for creating windows and navigating them:

Command	Description
LEADER ?	Show the list of key bindings (i.e., help)
LEADER c	Create a new window
LEADER n	Go to next window
LEADER p	Go to previous window
LEADER 0	Go to window 0. Numbers 1-9 are similar.
LEADER w	Show window list. The status bar lists windows, too.
LEADER ,	Rename the current window

Multiple Panes
Like screen, tmux can divide the terminal display into sections called panes. However, unlike the implementation of regions in screen , panes in tmux do not merely provide viewports to various windows. In tmux they are complete pseudo-terminals associated with the window. Thus a single tmux window can contain multiple terminals.

Command	Description
LEADER "	Split pane horizontally
LEADER %	Split pane vertically
LEADER arrow	Move to adjoining pane
LEADER Ctrl-arrow	Resize pane by 1 character
LEADER Alt-arrow	Resize pane by 5 characters
LEADER x	Destroy current pane




C-b         Send the prefix key (C-b) through to the application.
C-o         Rotate the panes in the current window forwards.
C-z         Suspend the tmux client.
!           Break the current pane out of the window.
"           Split the current pane into two, top and bottom.
#           List all paste buffers.
$           Rename the current session.
%           Split the current pane into two, left and right.
&           Kill the current window.
'           Prompt for a window index to select.
(           Switch the attached client to the previous session.
)           Switch the attached client to the next session.
,           Rename the current window.
-           Delete the most recently copied buffer of text.
.           Prompt for an index to move the current window.
0 to 9      Select windows 0 to 9.
:           Enter the tmux command prompt.
;           Move to the previously active pane.
=           Choose which buffer to paste interactively from a list.
?           List all key bindings.
D           Choose a client to detach.
L           Switch the attached client back to the last session.
[           Enter copy mode to copy text or view the history.
]           Paste the most recently copied buffer of text.
c           Create a new window.
d           Detach the current client.
f           Prompt to search for text in open windows.
i           Display some information about the current window.
l           Move to the previously selected window.
m           Mark the current pane (see select-pane -m).
M           Clear the marked pane.
n           Change to the next window.
o           Select the next pane in the current window.
p           Change to the previous window.
q           Briefly display pane indexes.
r           Force redraw of the attached client.
s           Select a new session for the attached client interactively.
t           Show the time.
w           Choose the current window interactively.


https://gist.github.com/jonhattan/52d26f00e4e069b4ac67
# tmux quickstart

`$ tmux`

`LEADER c` -> create new pane

`LEADER [num]` -> go to a pane

`CTRL+d` -> finish bash session, closes the pane. Closing all panes will destroy the window and thus the tmux

`LEADER x` -> close pane (in case bash got stalled).

`LEADER ,` -> rename a pane

`LEADER d` -> detach from the tmux (the tmux --all windows-- is still alive)

`LEADER ALTGR+[` -> Enter "copy" mode. Move up/down in the window with cursors or PgUp/PgDown. Press `q` to quit copy mode.

# Reuse tmux

`$ tmux new -s foo` -> create a tmux named foo

`$ tmux ls` -> list all tmux available

`$ tmux at -t foo` -> reattach to the foo tmux



# More info
* https://tmux.github.io/
* https://tmuxcheatsheet.com/
* https://tmate.io/
