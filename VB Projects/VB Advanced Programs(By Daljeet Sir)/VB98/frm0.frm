VERSION 5.00
Begin VB.Form frm0 
   Caption         =   "A Password Program"
   ClientHeight    =   6045
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7260
   LinkTopic       =   "Form1"
   ScaleHeight     =   6045
   ScaleWidth      =   7260
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdexit 
      Caption         =   "E&XIT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5760
      TabIndex        =   3
      Top             =   5280
      Width           =   1215
   End
   Begin VB.CommandButton cmdok 
      Caption         =   "O&K"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1920
      TabIndex        =   2
      Top             =   4680
      Width           =   3135
   End
   Begin VB.TextBox txtpassword 
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   3840
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   1680
      Width           =   3135
   End
   Begin VB.Label lblpassword 
      Caption         =   "Enter Your Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   1680
      Width           =   2775
   End
End
Attribute VB_Name = "frm0"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdexit_Click()
End
End Sub

Private Sub cmdok_Click()
If txtpassword.Text = "machrabisoanstu" Then
MsgBox ("Password Accepted")
Else
MsgBox ("Wrong Password. Try Again !!")
txtpassword.Text = " "
End If
End Sub
