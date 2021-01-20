VERSION 5.00
Begin VB.Form Form18 
   Caption         =   "Form18"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form18"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter Your Information"
      Height          =   735
      Left            =   1440
      TabIndex        =   0
      Top             =   1320
      Width           =   1815
   End
End
Attribute VB_Name = "Form18"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer

Private Sub Command1_Click()
a = InputBox("Enter Your Age")
Select Case a
Case 2 To 4
MsgBox "You Are In Prenursery"
Case 4 To 6
MsgBox "You Are In KG"
Case 6 To 10
MsgBox "You Are In Primary"
End Select
End Sub
