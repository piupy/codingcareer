VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   3480
      TabIndex        =   1
      Top             =   1680
      Width           =   2655
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   3960
      TabIndex        =   0
      Top             =   3480
      Width           =   1695
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As String, w As Boolean
a = Text1.Text
w = check(a)
If w = False Then
MsgBox "Please Write Something"
Else: MsgBox "OK Written"
End If
End Sub

Public Function check(x As String) As Boolean
If Len(Trim(x)) = 0 Then
check = False
Else: check = True
End If
End Function

