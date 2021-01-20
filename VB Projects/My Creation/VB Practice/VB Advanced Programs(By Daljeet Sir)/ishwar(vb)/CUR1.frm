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
      Left            =   5280
      TabIndex        =   8
      Top             =   5160
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   855
      Left            =   2880
      TabIndex        =   7
      Top             =   5160
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   645
      ItemData        =   "CUR1.frx":0000
      Left            =   4320
      List            =   "CUR1.frx":0019
      TabIndex        =   6
      Top             =   1560
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   4320
      TabIndex        =   5
      Top             =   2880
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   4320
      TabIndex        =   4
      Top             =   360
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CONVERT"
      Height          =   855
      Left            =   480
      TabIndex        =   0
      Top             =   5160
      Width           =   1695
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
      Left            =   120
      TabIndex        =   3
      Top             =   2880
      Width           =   2835
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
      Top             =   1560
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
      TabIndex        =   1
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
Dim RVALUE, AMOUNT, ERATE As Single
AMOUNT = Val(Text1.Text)
CNAME = List1.Text
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
End Sub

Private Sub Command3_Click()
End
End Sub
