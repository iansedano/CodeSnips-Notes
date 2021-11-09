

Esc::ExitApp

+F12::Reload

+F1::



SetTitleMatchMode, 2

item_code =
item_cost =
item_purchase_order =
clipboard =

SetKeyDelay, 200, 100

Winactivate, temp shipment
Send, ^c
item_code := clipboard
Send, {RIGHT}^c
item_cost := clipboard
Send, {RIGHT}^c
item_purchase_order := clipboard
Send, {LEFT}
Send, {DOWN}

Winactivate, TED
SetKeyDelay, 50,50
Send, item code =
Send, %item_code%{enter}
Send, item cost = %item_cost%{enter}
Send, item purchase order = %item_purchase_order%{enter}