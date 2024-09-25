Rotate:  <   >

Save:  Ctrl + S


The following actions and default key bindings can be used in an image
window.   (The  strings  in  [square  brackets]  are the config action
names).  If feh is running inside a terminal and its standard input is
not used for images or filelists, key input from the terminal is  also
accepted.   However,  terminal  input  support is currently limited to
most alphanumeric characters (0-9 a-z A-Z and some more), arrow  keys,
return and backspace.  The Alt (Mod1) modifier is also supported.

a [toggle_actions]
       Toggle actions display (see --draw-actions)

A [toggle_aliasing]
       Enable/Disable anti-aliasing

c [toggle_caption]
       Caption  entry  mode.   If  --caption-path has been specified,
       then this enables caption editing.  The caption at the  bottom
       of  the screen will turn yellow and can be edited.  Hit return
       to confirm and save the caption, or escape to cancel  editing.
       Note  that  you  can insert an actual newline into the caption
       using ⟨Ctrl+return⟩.

d [toggle_filenames]
       Toggle filename display (see --draw-filename)

e [toggle_exif]
       (optional feature, available in this build)  Toggle  EXIF  tag
       display

f [toggle_fullscreen]
       Toggle fullscreen

g [toggle_fixed_geometry]
       Enable/Disable automatic window resize when changing images.

h [toggle_pause]
       Pause/Continue  the slideshow.  When it is paused, it will not
       automatically change slides based on --slideshow-delay.

i [toggle_info]
       Toggle info display (see --info)

k [toggle_keep_vp]
       Toggle zoom and viewport keeping.  When enabled, feh will keep
       zoom and X, Y offset when switching images.

L [save_filelist]
       Save the current filelist  as  "feh_PID_ID_filelist".   It  is
       saved  in the directory specified by --output-dir, if set, and
       in the current working directory otherwise.

m [toggle_menu]
       Show menu.  Use the arrow keys and return to select items, and
       ⟨escape⟩ to close the menu.

n, ⟨space⟩, ⟨Right⟩ [next_img]
       Show next image.  Selects the next image in thumbnail mode.

o [toggle_pointer]
       Toggle pointer visibility

p, ⟨BackSpace⟩, ⟨Left⟩ [prev_img]
       Show previous image.  Selects the previous image in  thumbnail
       mode.

q, ⟨Escape⟩ [quit]
       Quit feh

r [reload_image]
       Reload current image.  Useful for webcams

s [save_image]
       Save  the current image as "feh_PID_ID_FILENAME".  It is saved
       in the directory specified by --output-dir, if set, and in the
       current working directory otherwise.

w [size_to_image]
Change window size to fit current image size (plus/minus zoom,
if set).  In scale-down and fixed-geometry mode, this also up‐
dates the window size limits.

x [close]
       Close current window

z [jump_random]
       Jump to a random position in the current filelist

Z [toggle_auto_zoom]
       Toggle auto-zoom.

[, ] [prev_dir, next_dir]
       Jump to the first image of the previous or  next  sequence  of
       images  sharing a directory name in the current filelist.  Use
       --sort dirname if you would like to ensure that all images  in
       a directory are grouped together.

<, > [orient_3, orient_1]
       rotate the image 90 degrees (counter)clockwise.

       When --edit is used, this also rotates the image in the under‐
       lying file.  Rotation is lossless, but may create artifacts in
       some  image  corners  when used with JPEG images.  Rotating in
       the reverse direction will make them go away.  See jpegtran(1)
       for more about lossless JPEG rotation.  Note: feh assumes that
       this feature is used to normalize image orientation.  For JPEG
       images, it will unconditionally set the EXIF  orientation  tag
       to   1   ("0,0  is  top  left")  after  every  rotation.   See
       jpegexiforient(1) for details on how to change this flag.

_ [flip]
       Vertically flip image.  When --edit is used, this  also  flips
       the image in the underlying file (see above).

| [mirror]
       Horizontally flip image.  When --edit is used, this also flips
       the image in the underlying file (see above).

0 .. 9 [action_0 .. action_9]
       Execute  the corresponding action (0 = --action, 1 = --action1
       etc.)

⟨Return⟩ [action_0]
       Run the command defined by --action

⟨Home⟩ [jump_first]
       Show first image

⟨End⟩ [jump_last]
       Show last image

⟨page up⟩ [jump_fwd]
       Go forward ~5% of the filelist

⟨page down⟩ [jump_back]
       Go backward ~5% of the filelist

+ [reload_plus]
       Increase reload delay by 1 second

- [reload_minus]
       Decrease reload delay by 1 second

⟨Delete⟩ [remove]
       Remove current file from filelist

⟨Ctrl+Delete⟩ [delete]
       Remove current file from filelist and delete it

⟨keypad Left⟩, ⟨Ctrl+Left⟩ [scroll_left]
       Scroll to the left

⟨keypad Right⟩, ⟨Ctrl+Right⟩ [scroll_right]
       Scroll to the right

⟨keypad up⟩, ⟨Ctrl+Up⟩ [scroll_up]
       Scroll up

⟨keypad Down⟩, ⟨Ctrl+Down⟩ [scroll_down]
       Scroll down.  Note that the scroll  keys  work  without  anti-
       aliasing  for  performance  reasons;  hit the render key after
       scrolling to anti-alias the image.

⟨Alt+Left [scroll_left_page]⟩
       Scroll to the left by one page

⟨Alt+Right [scroll_right_page]⟩
       Scroll to the right by one page

⟨Alt+Up [scroll_up_page]⟩
       Scroll up by one page


       ⟨Alt+Down [scroll_down_page]⟩
       Scroll down by one page

R, ⟨keypad begin⟩ [render]
       Anti-alias the image.  Opens the currently selected  image  in
       thumbnail mode.

⟨keypad +⟩, ⟨Up⟩ [zoom_in]
       Zoom in

⟨keypad -⟩, ⟨Down⟩ [zoom_out]
       Zoom out

*, ⟨keypad *⟩ [zoom_default]
       Zoom to 100%

/, ⟨keypad /⟩ [zoom_fit]
       Zoom to fit the window size

! [zoom_fill]
       Zoom to fill the window size like --bg-fill

MENU KEYS
The following keys bindings are used for the feh menu:

⟨Escape⟩ [menu_close]
       Close the menu

⟨Up⟩ [menu_up]
       Highlight previous menu item

⟨Down⟩ [menu_down]
       Highlight next menu item

⟨Left⟩ [menu_parent]
       Highlight parent menu item

⟨Right⟩ [menu_child]
       Highlight child menu item

⟨Return⟩, ⟨space⟩ [menu_select]
       Select highlighted menu item
