VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "E&XIT"
      Height          =   735
      Left            =   5280
      TabIndex        =   4
      Top             =   5040
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   735
      Left            =   3000
      TabIndex        =   3
      Top             =   5040
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHECK GRADE"
      Height          =   735
      Left            =   600
      TabIndex        =   2
      Top             =   5040
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   3240
      TabIndex        =   1
      Top             =   600
      Width           =   2175
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ENTER MARKS :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   600
      TabIndex        =   0
      Top             =   720
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim M As Integer
M = Val(Text1.Text)
Select Case M
Case 0 To 49:
    MsgBox "FAILED....."
Case 50 To 59:
    MsgBox "C GRADE....."
Case 60 To 69:
    MsgBox "B GRADE....."
Case 70 To 79:
    MsgBox "A GRADE....."
Case 80 To 100:
    MsgBox "A+ GRADE....."
Case Else:
    MsgBox "INVALID MARKS....."
End Select
End Sub

Private Sub Command2_Click()
Text1.Text = ""
End Sub

Private Sub Command3_Click()
End
End Sub
