Option Explicit

'----------------------------------------
'
'
'
'
'----------------------------------------


Sub CheckCodes()

    ' Select Tools->References from the Visual Basic menu.
    ' Check box beside "Microsoft Scripting Runtime" in the list.

    Dim dict As Scripting.Dictionary
    Set dict = New Scripting.Dictionary
    
    ' Add sculps to dictionary
    Dim oArtwork As New clsArtwork

    dict.Add Key:="LQU-SCU-POR-75047-01", Item:=oArtwork

    dict("LQU-SCU-POR-75047-01").Title = "LS - LOVE"
    dict("LQU-SCU-POR-75047-01").PO = "2019/0001"
    dict("LQU-SCU-POR-75047-01").Shipment = "S-2020-03"
    dict("LQU-SCU-POR-75047-01").Material = "Bronze, Stainless Steel"

    Debug.Print dict("LQU-SCU-POR-75047-01").Title
    Debug.Print dict("LQU-SCU-POR-75047-01").PO
    Debug.Print dict("LQU-SCU-POR-75047-01").Shipment
    Debug.Print dict("LQU-SCU-POR-75047-01").Material

End Sub
