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
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3360
      TabIndex        =   4
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "E&XIT"
      Height          =   735
      Left            =   5160
      TabIndex        =   2
      Top             =   5160
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   735
      Left            =   3000
      TabIndex        =   1
      Top             =   5160
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHECK GRADE"
      Height          =   735
      Left            =   480
      TabIndex        =   0
      Top             =   5160
      Width           =   1815
   End
   Begin VB.Label Label2 
      Height          =   1455
      Left            =   960
      TabIndex        =   5
      Top             =   2160
      Width           =   5895
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ENTER MARKS:"
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
      TabIndex        =   3
      Top             =   840
      Width           =   1980
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
Case Is < 50
    MsgBox "FAILED....."
Case Is < 60
    MsgBox "C GRADE....."
Case Is < 70
    MsgBox "B GRADE....."
Case Is < 80
    MsgBox "A GRADE....."
Case Is <= 100
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
