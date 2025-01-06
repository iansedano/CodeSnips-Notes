Command  | Description  
|----------------|-----------------------------------|
`:Vex` vertical split explorer     |
`:Ex`    | explorer  |
`Ctrl + w`     | switch panes with `h`,`j`,`k`,`l` |
`Ctrl + w` `=` | resize panes to equal size  |
`+` `-`  | change height   |
`<` `>`  | width     |
`v` then `"+y` | copy to system clipboard    |
`:tabnext`     | ?   |
`:Ntree` | open nerd tree explorer     |
`%`| go to matching brace    |


`viw` select word
`v]]` select block
`v[[` select block up
`vis` select block

`w` next word
`b` back word
`x` delete character
`zz` center screen on line

`:bufdo bwipeout` close all buffers
`:bufdo write` write all buffers

`zR` open all folds
`zM` close all open folds
`za` toggle fold at cursor
`zk` `zj` move between folds

Here’s the updated table with **pane resizing motions and keybindings** included:

`/`    Start searching for a pattern. Normal
`n`    Move to the next search match.   Normal
`N`    Move to the previous search match. Normal
`:nohlsearch`   Clear search highlights.  Command
`gg`   Go to the beginning of the file. Normal
`G`    Go to the end of the file. Normal
`42G`  Go to line 42 (replace `42` with any line number). Normal
`<C-d>`Scroll down by half a screen.    Normal
`<C-u>`Scroll up by half a screen.Normal
`<C-f>`Scroll down by a full screen.    Normal
`<C-b>`Scroll up by a full screen.Normal
`<C-e>`Scroll down one line (or right if `nowrap` is off).     Normal
`<C-y>`Scroll up one line.     Normal
`zh`   Scroll the viewport one column left.      Normal
`zl`   Scroll the viewport one column right.     Normal
`zH`   Scroll the viewport half a screen to the left.     Normal
`zL`   Scroll the viewport half a screen to the right.    Normal
`vip`  Select the inner paragraph.      Visual
`vap`  Select the paragraph, including surrounding blank lines.Visual
`:split`   Split the current buffer into a horizontal pane.Command
`:vsplit`  Split the current buffer into a vertical pane.  Command
`<C-w>s`  Create a horizontal split. Normal
`<C-w>v`  Create a vertical split.   Normal
`<C-w>h`  Move to the pane on the left.    Normal
`<C-w>l`  Move to the pane on the right.   Normal
`<C-w>j`  Move to the pane below.    Normal
`<C-w>k`  Move to the pane above.    Normal
`<C-w>c`  Close the current pane.    Normal
`<C-w>=`  Equalize the sizes of all panes. Normal
`:resize +5`    Increase the height of the current pane by 5 lines.  Command
`:resize -5`  Decrease the height of the current pane by 5 lines.  Command
`:vertical resize +5` | Increase the width of the current pane by 5 columns. Command
`:vertical resize -5` | Decrease the width of the current pane by 5 columns. Command
`<C-w>+`  Increase the height of the current pane by 1 line. Normal
`<C-w>-`  Decrease the height of the current pane by 1 line. Normal
`<C-w>>`  Increase the width of the current pane by 1 column.  Normal
`<C-w><`  Decrease the width of the current pane by 1 column.  Normal
`>`    Indent the selected lines once.  Visual
`<`    Un-indent the selected lines once.    Visual
`gv`   Re-select the last visual selection.   Normal
`:lua vim.lsp.buf.rename()` | Rename the function or variable under the cursor (if LSP is configured).  Command (LSP)|
`:lua vim.lsp.buf.definition()` | Jump to the definition of the function/variable under the cursor. Command (LSP)|
`*`    Search for the word under the cursor (forward).    Normal
`#`    Search for the word under the cursor (backward).   Normal
`0`    Jump to the beginning of the line.     Normal
`^`    Jump to the first non-whitespace character on the line.    Normal
