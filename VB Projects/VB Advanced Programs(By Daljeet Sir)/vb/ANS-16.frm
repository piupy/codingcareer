VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5310
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8010
   LinkTopic       =   "Form1"
   ScaleHeight     =   5310
   ScaleWidth      =   8010
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "a c c u m u l a t e"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3735
      Left            =   3960
      TabIndex        =   11
      Top             =   0
      Width           =   375
   End
   Begin VB.TextBox Text6 
      Height          =   1335
      Left            =   240
      TabIndex        =   10
      Top             =   3840
      Width           =   6855
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   2040
      TabIndex        =   9
      Top             =   3240
      Width           =   1815
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   2040
      TabIndex        =   8
      Top             =   2520
      Width           =   1815
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   2040
      TabIndex        =   7
      Top             =   1800
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   2040
      TabIndex        =   6
      Top             =   1080
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2040
      TabIndex        =   5
      Top             =   360
      Width           =   1815
   End
   Begin VB.Label Label7 
      Caption         =   "address"
      Height          =   255
      Left            =   600
      TabIndex        =   4
      Top             =   1800
      Width           =   975
   End
   Begin VB.Label Label6 
      Caption         =   "name"
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   360
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "phone no."
      Height          =   255
      Left            =   600
      TabIndex        =   2
      Top             =   3240
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "pin code"
      Height          =   255
      Left            =   600
      TabIndex        =   1
      Top             =   2520
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "sex"
      Height          =   255
      Left            =   600
      TabIndex        =   0
      Top             =   1080
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text6.Text = Text1.Text + Text2.Text + Text3.Text + Text4.Text + Text5.Text


End Sub
