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
      Caption         =   "EXIT"
      Height          =   975
      Left            =   5640
      TabIndex        =   4
      Top             =   5640
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "CLEAR"
      Height          =   975
      Left            =   3240
      TabIndex        =   3
      Top             =   5640
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHECK"
      Height          =   855
      Left            =   840
      TabIndex        =   2
      Top             =   5760
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   4680
      TabIndex        =   1
      Top             =   960
      Width           =   1455
   End
   Begin VB.Label Label2 
      Height          =   1095
      Left            =   840
      TabIndex        =   5
      Top             =   3120
      Width           =   6615
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
      Left            =   960
      TabIndex        =   0
      Top             =   960
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
If A >= 0 And A < 10 Then
    Label2.Caption = "SINGLE DIGIT NUMBER..."
ElseIf A >= 10 And A < 100 Then
    Label2.Caption = "TWO DIGIT NUMBER..."
ElseIf A >= 100 And A < 1000 Then
    Label2.Caption = "THREE DIGIT NUMBER..."
Else
    Label2.Caption = "NOT IN THE LIST..."
End If
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Label2.Caption = ""
End Sub
Private Sub Command3_Click()
End
End Sub
