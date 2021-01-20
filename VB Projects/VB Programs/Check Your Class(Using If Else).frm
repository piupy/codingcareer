VERSION 5.00
Begin VB.Form Form19 
   Caption         =   "Form19"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form19"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Check Your Class"
      Height          =   855
      Left            =   1920
      TabIndex        =   0
      Top             =   1560
      Width           =   2895
   End
End
Attribute VB_Name = "Form19"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer

Private Sub Command1_Click()
a = InputBox("Enter Your Age")
If a >= 2 And a <= 4 Then
MsgBox "You Are In Pre-Primary"
ElseIf a >= 4 And a <= 6 Then
MsgBox "You Are In KG"
ElseIf a >= 6 And a <= 10 Then
MsgBox "You Are In Primary"
Else: MsgBox "Age Out Of Limit"
End If
End Sub
