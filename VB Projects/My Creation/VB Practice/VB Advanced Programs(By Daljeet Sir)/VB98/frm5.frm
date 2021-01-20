VERSION 5.00
Begin VB.Form frm5 
   Caption         =   "Note Pad Workshop"
   ClientHeight    =   6270
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7170
   LinkTopic       =   "Form1"
   ScaleHeight     =   6270
   ScaleWidth      =   7170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdselectall 
      Caption         =   "SELECT ALL"
      Height          =   735
      Left            =   5520
      TabIndex        =   5
      Top             =   5160
      Width           =   1455
   End
   Begin VB.CommandButton cmdpaste 
      Caption         =   "PASTE"
      Height          =   735
      Left            =   3720
      TabIndex        =   4
      Top             =   5160
      Width           =   1455
   End
   Begin VB.CommandButton cmdcut 
      Caption         =   "CUT"
      Height          =   735
      Left            =   1920
      TabIndex        =   3
      Top             =   5160
      Width           =   1455
   End
   Begin VB.CommandButton cmdcopy 
      Caption         =   "COPY"
      Height          =   735
      Left            =   120
      TabIndex        =   2
      Top             =   5160
      Width           =   1455
   End
   Begin VB.VScrollBar vsb1 
      Height          =   3975
      Left            =   6720
      TabIndex        =   1
      Top             =   360
      Width           =   255
   End
   Begin VB.TextBox txtNPad 
      Height          =   3975
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   6855
   End
End
Attribute VB_Name = "frm5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdcopy_Click()
Clipboard.SetText txtNPad.SelText
cmdpaste.Enabled = True
End Sub

Private Sub cmdcut_Click()
Clipboard.SetText txtNPad.SelText
txtNPad.SelText = " "
cmdpaste.Enabled = True
End Sub

Private Sub cmdpaste_Click()
txtNPad.SelText = Clipboard.GetText
End Sub

Private Sub cmdselectall_Click()
Text$ = txtNPad.Text
txtNPad.SelStart = 0
txtNPad.SelLength = Len(text4)
txtNPad.SetFocus
End Sub
