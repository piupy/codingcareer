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
      Height          =   615
      Left            =   5400
      TabIndex        =   14
      Top             =   5880
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   615
      Left            =   3000
      TabIndex        =   13
      Top             =   5880
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   3720
      TabIndex        =   12
      Top             =   3840
      Width           =   1815
   End
   Begin VB.OptionButton Option7 
      Caption         =   "KUWAIT DINAR"
      Height          =   615
      Left            =   4320
      TabIndex        =   10
      Top             =   2760
      Width           =   1695
   End
   Begin VB.OptionButton Option6 
      Caption         =   "UAE DIRHAM"
      Height          =   615
      Left            =   2160
      TabIndex        =   9
      Top             =   2760
      Width           =   1575
   End
   Begin VB.OptionButton Option5 
      Caption         =   "SOUDI RIYAL"
      Height          =   495
      Left            =   120
      TabIndex        =   8
      Top             =   2760
      Width           =   1575
   End
   Begin VB.OptionButton Option4 
      Caption         =   "SWISS FRANK"
      Height          =   615
      Left            =   5880
      TabIndex        =   7
      Top             =   1920
      Width           =   1695
   End
   Begin VB.OptionButton Option3 
      Caption         =   "D.MARK"
      Height          =   615
      Left            =   4200
      TabIndex        =   6
      Top             =   1920
      Width           =   1215
   End
   Begin VB.OptionButton Option2 
      Caption         =   "STERLING"
      Height          =   615
      Left            =   2280
      TabIndex        =   5
      Top             =   1920
      Width           =   1455
   End
   Begin VB.OptionButton Option1 
      Caption         =   "US DOLLOR"
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   2040
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3720
      TabIndex        =   2
      Top             =   360
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CONVERT"
      Height          =   615
      Left            =   480
      TabIndex        =   0
      Top             =   5880
      Width           =   1695
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "CURRENCY VALUE :"
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
      TabIndex        =   11
      Top             =   3960
      Width           =   2610
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "SELECT CURRENCY :"
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
      Top             =   1320
      Width           =   2745
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ENTER AMOUNT:"
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
      TabIndex        =   1
      Top             =   480
      Width           =   2160
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim ERATE, AMOUNT, RVALUE As Single
AMOUNT = Val(Text1.Text)
Select Case True
Case Option1.Value:   ERATE = 42.5
Case Option2.Value:   ERATE = 71.5
Case Option3.Value:   ERATE = 25.5
Case Option4.Value:   ERATE = 31.5
Case Option5.Value:   ERATE = 11.5
Case Option6.Value:   ERATE = 12.5
Case Option7.Value:   ERATE = 140.5
Case Else:            ERATE = 0
End Select
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
