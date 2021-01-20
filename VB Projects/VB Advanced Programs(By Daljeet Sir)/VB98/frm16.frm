VERSION 5.00
Begin VB.Form frm16 
   Caption         =   "For Next Loop Demo"
   ClientHeight    =   6240
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7140
   LinkTopic       =   "Form1"
   ScaleHeight     =   6240
   ScaleWidth      =   7140
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdprintnumbers 
      Caption         =   "PRINT NUMBERS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2280
      TabIndex        =   4
      Top             =   4920
      Width           =   2535
   End
   Begin VB.TextBox txtsecondnumber 
      Height          =   735
      Left            =   4320
      TabIndex        =   3
      Top             =   2400
      Width           =   1935
   End
   Begin VB.TextBox txtfirstnumber 
      Height          =   735
      Left            =   4320
      TabIndex        =   2
      Top             =   600
      Width           =   1935
   End
   Begin VB.Label lblsecondnumber 
      Caption         =   "Second Number"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   600
      TabIndex        =   1
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Label lblfirstnumber 
      Caption         =   "First Number"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   1695
   End
End
Attribute VB_Name = "frm16"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdprintnumbers_Click()
Dim firstnumber As Integer
Dim secondnumber As Integer
Dim index As Integer
If (txtfirstnumber.Text = " " Or txtsecondnumber.Text = " ") Then
MsgBox ("You Must Enter Numbers In Both Boxes")
Else
firstnumber = txtfirstnumber.Text
secondnumber = txtsecondnumber.Text
If (Val(txtfirstnumber.Text) <= Val(txtsecondnumber.Text)) Then
For index = firstnumber To secondnumber
Print index
Next index
Else
For index = firstnumber To secondnumber Step -1
Print index
Next index
End If
End If
End Sub


