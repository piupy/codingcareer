VERSION 5.00
Begin VB.Form frm28 
   Caption         =   "Display Corrct Grade For The Marks"
   ClientHeight    =   6270
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7140
   LinkTopic       =   "Form1"
   ScaleHeight     =   6270
   ScaleWidth      =   7140
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frm28"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
Dim marks As Integer
Dim grade As String
marks = InputBox("Enter The Marks")
Select Case marks
Case 70 To 100
grade = " A "
Case 60 To 69
grade = " B "
Case 50 To 59
grade = " C "
Case 40 To 49
grade = " D "
Case Else
grade = " E "
End Select
Print grade
End Sub


