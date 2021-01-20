VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form4"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   3600
      TabIndex        =   2
      Top             =   2280
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   4200
      TabIndex        =   0
      Top             =   4320
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Like Operator"
      Height          =   735
      Left            =   2040
      TabIndex        =   1
      Top             =   240
      Width           =   3855
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As String
a = Text1.Text
If a Like "arsdow*" Then
MsgBox "Matched"
Else: MsgBox "Didn't Match"
End If
End Sub
