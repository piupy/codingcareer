VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "EXIT"
      Height          =   615
      Left            =   4920
      TabIndex        =   4
      Top             =   5880
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "CLEAR"
      Height          =   615
      Left            =   2880
      TabIndex        =   3
      Top             =   5880
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHECK"
      Height          =   615
      Left            =   720
      TabIndex        =   2
      Top             =   5880
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   4200
      TabIndex        =   1
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ENTER A NUMBER :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   600
      TabIndex        =   0
      Top             =   1320
      Width           =   2940
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
A = Val(Text1.Text)
If (A >= 0 And A < 10) Then
    MsgBox "SINGLE DIGIT NUMBER......"
ElseIf A >= 10 And A < 100 Then
    MsgBox "TWO DIGIT NUMBER......"
ElseIf A >= 100 And A < 1000 Then
    MsgBox "THREE DIGIT NUMBER......"
Else
    MsgBox "NOT IN THE LIST......"
End If
End Sub

Private Sub Command2_Click()
Text1.Text = ""
End Sub

Private Sub Command3_Click()
End
End Sub
