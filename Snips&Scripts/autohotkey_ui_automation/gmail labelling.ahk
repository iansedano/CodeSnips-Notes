; Must have shortcuts enabled

;KEY
;shift a artist label
;shift p promotional
;shift n news press
;shift s skip
;shift d delete
;shift C CV

;apply artist label
+a::
Send, l
Sleep, 200
Send, art
Sleep, 200k
Send, {enter}
Sleep, 200
Send, k
Sleep, 200
Return

;apply CV label
+c::
Send, l
Sleep, 250
Send, cv
Sleep, 200
Send, {enter}
Sleep, 200
Send, k
Sleep, 200
Return

;apply promotional label
+p::
Send, l
Sleep, 200
Send, pro
Sleep, 200
Send, {enter}
Sleep, 200
Send, k
Sleep, 200
Return

;apply news label
+n::
Send, l
Sleep, 200
Send, new
Sleep, 200
Send, {enter}
Sleep, 200
Send, k
Sleep, 200
Return

;skip
+s::
Send, k
Return

;delete
+d::
Send {#}
Sleep, 500
Send, {enter}
Sleep, 200
Return