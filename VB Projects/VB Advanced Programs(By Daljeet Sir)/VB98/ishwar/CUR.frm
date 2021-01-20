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
      Left            =   4920
      TabIndex        =   8
      Top             =   5400
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   615
      Left            =   2640
      TabIndex        =   7
      Top             =   5400
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CONVERT"
      Height          =   615
      Left            =   480
      TabIndex        =   6
      Top             =   5400
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   3240
      TabIndex        =   5
      Top             =   2160
      Width           =   1815
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "CUR.frx":0000
      Left            =   3240
      List            =   "CUR.frx":0019
      TabIndex        =   3
      Top             =   1320
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   3240
      TabIndex        =   1
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "RUPEE EQUIVALENT"
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
      TabIndex        =   4
      Top             =   2280
      Width           =   2685
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
      Left            =   240
      TabIndex        =   2
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
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2160
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim CNAME As String
Dim RVALUE, AMOUNT, ERATE As Single
AMOUNT = Val(Text1.Text)
CNAME = Combo1.Text
Select Case CNAME
    Case "US DOLLOR": ERATE = 42.5
    Case "STERLING": ERATE = 71.5
    Case "D.MARK": ERATE = 25.5
    Case "SWISS FRANK": ERATE = 31.5
    Case "SAUDI RIYAL": ERATE = 11.5
    Case "UAE DIRHAM": ERATE = 12.5
    Case "KUWAIT DINAR": ERATE = 140.5
    Case Else: ERATE = 0
End Select
RVALUE = AMOUNT * ERATE
Text2.Text = RVALUE
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Combo1.Text = ""
End Sub

Private Sub Command3_Click()
End
End Sub
