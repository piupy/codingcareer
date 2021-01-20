VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form3"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   4200
      TabIndex        =   1
      Top             =   3120
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   3480
      TabIndex        =   0
      Top             =   1560
      Width           =   2895
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As String
a = Right(Text1.Text, 4)
If StrComp(a, Right(Format(Now, "dd-mm-yyyy"), 4)) = 0 Then
MsgBox "Same Year"
ElseIf StrComp(a, Right(Format(Now, "dd-mm-yyyy"), 4)) > 0 Then
MsgBox "Next Year"
ElseIf StrComp(a, Right(Format(Now, "dd-mm-yyyy"), 4)) < 0 Then
MsgBox "Previous Year"
End If
End Sub

Private Sub Text1_LostFocus()
If IsDate(Text1.Text) <> True Then
MsgBox "Invalid Date"
With Text1
.Text = Clear
.SetFocus
End With
Else: Text1.Text = Format(d, "dd-mm-yyyy")
End If
End Sub
