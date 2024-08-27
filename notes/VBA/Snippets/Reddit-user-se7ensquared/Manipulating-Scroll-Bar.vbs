'Display all Scroll Bars
Application.DisplayScrollBars = True
'Hide all Scroll Bars
Application.DisplayScrollBars = False
' The below shows how to hide or display either the horizontal or vertical scroll bars for active workbook.
'Hide all the vertical or horizontal Scroll Bar
ActiveWindow.DisplayHorizontalScrollBar = False
ActiveWindow.DisplayVerticalScrollBar = False
'Display the vertical or horizontal Scroll Bar
ActiveWindow.DisplayHorizontalScrollBar = True
ActiveWindow.DisplayVerticalScrollBar = True
' Fix the Scroll Area
' Fixing the scroll area will prevent a user from scrolling into or selecting any of the cells outside of the specified range.  I use this with dashboards so that the user’s screen is always focused on the key information, even if they try to scroll it won’t let them.
'Set the scroll area to a specific range
ActiveSheet.ScrollArea = "A10:D20"
'Reset the scroll area
ActiveSheet.ScrollArea = ""
'Scroll to specific location on the worksheet
'The code below shows how to scroll to a specific row or column.  Change the ScrollRow and ScrollColumn values to meet your requirements.
'Scroll to a specific row and column
ActiveWindow.ScrollRow = 1
ActiveWindow.ScrollColumn = 10
' Scroll by a specific number of rows or columns
' SmallScroll and LargeScroll can be used to scroll the window, using the active cell as a start point.  The good news is that even if the code tries to scroll the horizontal or vertical position to be less than Row 1 or Column A the code will not create an error.
'Scroll horizontally or vertically by a specific number of rows or columns
ActiveWindow.SmallScroll Up:=100
ActiveWindow.SmallScroll Down:=50
ActiveWindow.SmallScroll ToRight:=8
ActiveWindow.SmallScroll ToLeft:=8
'The SmallScroll method can be applied within a single line
ActiveWindow.SmallScroll Up:=20, ToRight:=10
'The SmallScroll method can be applied without referencing the direction.
'The arguments must be presented in the order show below
'ActiveWindow.SmallScroll ([Down], [Up], [ToRight], [ToLeft])
ActiveWindow.SmallScroll 20, , 30,
'LargeScroll also exists as a method.  LongScroll will scroll a page at a time,
'rather than individual row/column
ActiveWindow.LargeScroll Down:=2, ToLeft:=1
' The values can be negative numbers.  Up:=-20 is equivalent to Down:=20.  The same is true for ToLeft and ToRight.
