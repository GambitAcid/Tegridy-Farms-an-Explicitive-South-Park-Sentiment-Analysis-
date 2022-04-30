' This script removes scene annotaion from dialogue blurbs
' It will act on as many episodes as are present in the Workbook
' It anticipates that each episode will be on it's own sheet but, 
' it would also process sheets containing full seasons.


' Function definition to regular expression to remove all words
' found between brackets and the brackets. 
Function CleanStr(strIn As String) As String
Dim objRegex As Object
Set objRegex = CreateObject("vbscript.regexp")
With objRegex
   .Pattern = "\[([^\][]+)]"
   .Global = True
   CleanStr = .Replace(strIn, vbNullString)
End With
End Function



' Main sub finds number of sheets in the workbook
' Loops through sheets and calls CleanStr to remove scene notation
' Moves clean dialogue to empty cell
Sub Strip_Scene()

For I = 1 To ActiveWorkbook.Worksheets.Count
    currentWS = ActiveWorkbook.Worksheets(I).Name
    Worksheets(currentWS).Activate 'activate chosen sheet
    Worksheets(currentWS).Range("A" & Rows.Count).End(xlUp).Select 'Go to end of sheet
    Maxrow = ActiveCell.Row 'Get the row number

'Return to top of sheet to view the results
    Worksheets(currentWS).Range("A1").Select

    For J = 1 To Maxrow
         SceneNoteRemoved = CleanStr(Worksheets(currentWS).Cells(J, 4).Value)
         Worksheets(currentWS).Cells(J, 5) = SceneNoteRemoved ' actual update
    Next J

Next I
End Sub
