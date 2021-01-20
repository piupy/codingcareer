VERSION 5.00
Begin VB.Form Form45 
   Caption         =   "Form45"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form45"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter Elements In An Array"
      Height          =   1095
      Left            =   1560
      TabIndex        =   0
      Top             =   1800
      Width           =   3255
   End
End
Attribute VB_Name = "Form45"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(5) As Integer, i As Integer, j As Integer, k As Integer, c As Integer
Private Sub Command1_Click()
i = 1
Do While i < 6
a(i) = InputBox("Enter An Element")
i = i + 1
Loop
j = 1
Do While j < 6
Print a(j)
j = j + 1
Loop
c = 0
k = 1
Do While k < 6
c = c + 1
k = k + 1
Loop
MsgBox "Your Array Has " & c & " Elements "
End Sub
