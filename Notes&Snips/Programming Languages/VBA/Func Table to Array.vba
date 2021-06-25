Function TableArray(ws As Worksheet, tbl as ListObject)
	Set wsFunction = ThisWorkbook.Worksheets(ws)
	Set tblFunction = wsFunction.ListObjects(tbl)
	Set rg = tblFunction.DataBodyRange

	Dim arr As Variant

	arr = Application.Transpose(rg)

	TableArray = arr
End Function