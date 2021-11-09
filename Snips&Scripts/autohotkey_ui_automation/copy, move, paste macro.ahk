#Persistent
SetTimer, movetheaddress, 1000
Return

movetheaddress:
Send, ^x
Send, {Right}
Send, {Up}
Send, ^v
Send, {Left}
Send, {Down}
Send, {Down}
Send, {Down}
Return