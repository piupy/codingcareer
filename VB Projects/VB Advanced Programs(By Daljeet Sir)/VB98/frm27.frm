VERSION 5.00
Begin VB.Form frm27 
   Caption         =   "The Pattern"
   ClientHeight    =   6210
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   ScaleHeight     =   6210
   ScaleWidth      =   7200
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frm27"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
Dim a As Integer
Dim b As Integer
Dim c As Integer
For a = 1 To 4
c = 1
For b = 1 To a
Print c;
c = c + 2
Next b
Print
Next a
End Sub

