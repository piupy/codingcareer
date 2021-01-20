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
      Height          =   855
      Left            =   5040
      TabIndex        =   14
      Top             =   5640
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   855
      Left            =   2760
      TabIndex        =   13
      Top             =   5640
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CONVERT"
      Height          =   855
      Left            =   480
      TabIndex        =   12
      Top             =   5640
      Width           =   1575
   End
   Begin VB.OptionButton Option7 
      Caption         =   "KUWAIT DINAR"
      Height          =   495
      Left            =   360
      TabIndex        =   11
      Top             =   3720
      Width           =   1695
   End
   Begin VB.OptionButton Option6 
      Caption         =   "UAE DIRHAM"
      Height          =   615
      Left            =   4560
      TabIndex        =   10
      Top             =   2880
      Width           =   1455
   End
   Begin VB.OptionButton Option5 
      Caption         =   "SAUDI RIYAL"
      Height          =   495
      Left            =   2400
      TabIndex        =   9
      Top             =   2880
      Width           =   1455
   End
   Begin VB.OptionButton Option4 
      Caption         =   "SWISS FRANK"
      Height          =   495
      Left            =   360
      TabIndex        =   8
      Top             =   2760
      Width           =   1455
   End
   Begin VB.OptionButton Option3 
      Caption         =   "D.MARK"
      Height          =   495
      Left            =   4560
      TabIndex        =   7
      Top             =   1800
      Width           =   1455
   End
   Begin VB.OptionButton Option2 
      Caption         =   "STERLING"
      Height          =   495
      Left            =   2400
      TabIndex        =   6
      Top             =   1800
      Width           =   1455
   End
   Begin VB.OptionButton Option1 
      Caption         =   "US DOLLOR"
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   1800
      Value           =   -1  'True
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   4320
      TabIndex        =   4
      Top             =   4440
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   4320
      TabIndex        =   2
      Top             =   480
      Width           =   1335
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "RUPEE EQUIVALENT :"
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
      Left            =   360
      TabIndex        =   3
      Top             =   4560
      Width           =   2835
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "SELECT CURRENCY: "
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
      Left            =   240
      TabIndex        =   1
      Top             =   1080
      Width           =   2745
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ENTER AMOUNT :"
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
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   2235
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim ERATE, AMOUNT, RVALUE As Single
AMOUNT = Text1.Text
If (Option1.Value = True) Then
    ERATE = 42.5
ElseIf (Option2.Value = True) Then
    ERATE = 71.5
ElseIf (Option3.Value = True) Then
    ERATE = 25.5
ElseIf (Option4.Value = True) Then
    ERATE = 31.5
ElseIf (Option5.Value = True) Then
    ERATE = 11.5
ElseIf (Option6.Value = True) Then
    ERATE = 12.5
ElseIf (Option7.Value = True) Then
    ERATE = 140.5
Else
    ERATE = 0
End If
RVALUE = AMOUNT * ERATE
Text2.Text = RVALUE
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
End Sub

Private Sub Command3_Click()
End
End Sub
