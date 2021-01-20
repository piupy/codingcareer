VERSION 5.00
Begin VB.Form frm2 
   Caption         =   "Message Form"
   ClientHeight    =   6195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   ScaleHeight     =   6195
   ScaleWidth      =   7200
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdok 
      Caption         =   "O&K"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1440
      TabIndex        =   6
      Top             =   4800
      Width           =   3375
   End
   Begin VB.TextBox txtlastname 
      Height          =   615
      Left            =   4080
      TabIndex        =   5
      Top             =   3360
      Width           =   2415
   End
   Begin VB.TextBox txtfirstname 
      Height          =   615
      Left            =   4080
      TabIndex        =   4
      Top             =   2040
      width           =   2415
   End
   Begin VB.TextBox txttitle 
      Height          =   615
      Left            =   4080
      TabIndex        =   3
      Top             =   600
      width           =   2415
   End
   Begin VB.Label lbllastname 
      Caption         =   "LAST NAME"
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
      Left            =   360
      TabIndex        =   2
      Top             =   3360
      Width           =   2415
   End
   Begin VB.Label lbl2 
      Caption         =   "FIRST NAME"
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
      Left            =   360
      TabIndex        =   1
      Top             =   2040
      Width           =   2415
   End
   Begin VB.Label lbl1 
      Caption         =   "TITLE"
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
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   2415
   End
End
Attribute VB_Name = "frm2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdok_Click()
MsgBox ("Merry Christmas And Happy New Year" + txttitle + " " + txtfirstname + " " + txtlastname)
End Sub

