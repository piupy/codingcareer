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
      Caption         =   "E&XIT"
      Height          =   735
      Left            =   5400
      TabIndex        =   8
      Top             =   5760
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   735
      Left            =   3120
      TabIndex        =   7
      Top             =   5760
      Width           =   1455
   End
   Begin VB.CommandButton COMMAND1 
      Caption         =   "SUM"
      Height          =   735
      Left            =   720
      TabIndex        =   6
      Top             =   5760
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   3480
      TabIndex        =   5
      Top             =   4200
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   3480
      TabIndex        =   3
      Top             =   2400
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   3480
      TabIndex        =   2
      Top             =   720
      Width           =   1695
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   1335
      Left            =   960
      TabIndex        =   1
      Top             =   2160
      Width           =   855
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   720
      Width           =   1815
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "SUM IS :"
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
      Left            =   840
      TabIndex        =   4
      Top             =   4320
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Text3 = Val(Text1) + Val(Text2)
End Sub

Private Sub Command2_Click()
Text1 = ""
Text2 = ""
Text3 = ""
End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub HScroll1_Change()
Text1 = HScroll1.Value
End Sub
Private Sub VScroll1_Change()
Text2 = VScroll1.Value
End Sub
