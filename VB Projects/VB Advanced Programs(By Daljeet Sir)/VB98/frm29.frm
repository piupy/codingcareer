VERSION 5.00
Begin VB.Form frm29 
   Caption         =   "Calculate Tax, Pay, Balance"
   ClientHeight    =   6225
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7140
   LinkTopic       =   "Form1"
   ScaleHeight     =   6225
   ScaleWidth      =   7140
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdpay 
      Caption         =   "Calculate Pay"
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
      Left            =   5160
      TabIndex        =   16
      Top             =   5280
      Width           =   1815
   End
   Begin VB.CommandButton cmdbalance 
      Caption         =   "Calculate Balance"
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
      Left            =   2640
      TabIndex        =   15
      Top             =   5280
      Width           =   1815
   End
   Begin VB.CommandButton cmdtax 
      Caption         =   "Calculate Tax"
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
      Left            =   120
      TabIndex        =   14
      Top             =   5280
      Width           =   1815
   End
   Begin VB.TextBox txtpay 
      Height          =   495
      Left            =   5760
      TabIndex        =   10
      Top             =   3600
      Width           =   1215
   End
   Begin VB.TextBox txtbalance 
      Height          =   495
      Left            =   5760
      TabIndex        =   9
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox txttax 
      Height          =   495
      Left            =   5760
      TabIndex        =   8
      Top             =   1200
      Width           =   1215
   End
   Begin VB.TextBox txtrevenue 
      Height          =   495
      Left            =   2160
      TabIndex        =   7
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox txtwithdrawal 
      Height          =   495
      Left            =   2160
      TabIndex        =   6
      Top             =   3000
      Width           =   1215
   End
   Begin VB.TextBox txtoriginal 
      Height          =   495
      Left            =   2160
      TabIndex        =   5
      Top             =   1800
      Width           =   1215
   End
   Begin VB.TextBox txtincome 
      Height          =   495
      Left            =   2160
      TabIndex        =   4
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label lblpay 
      Caption         =   "Pay"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         weight          =   400
         underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3720
      TabIndex        =   13
      Top             =   3600
      Width           =   1455
   End
   Begin VB.Label lblbalance 
      Caption         =   "New Balance"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3720
      TabIndex        =   12
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label lbltax 
      Caption         =   "Tax"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3720
      TabIndex        =   11
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label lblrevenue 
      Caption         =   "Revenue Generated"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   4200
      Width           =   1455
   End
   Begin VB.Label lblwithdrawal 
      Caption         =   "Withdrawal"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   3000
      Width           =   1455
   End
   Begin VB.Label lbloriginal 
      Caption         =   "Original Balance"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Label lblincome 
      Caption         =   "Taxable Income"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   1455
   End
End
Attribute VB_Name = "frm29"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdbalance_Click()
If Val(txtwithdrawal.Text) <= Val(txtoriginal.Text) Then
txtbalance.Text = Val(txtoriginal.Text - txtwithdrawal.Text)
Else
MsgBox ("Insufficient Funds")
End If
End Sub

Private Sub cmdpay_Click()
If Val(txtrevenue.Text) < 50000 Then
txtpay.Text = 0.1 * Val(txtrevenue.Text)
ElseIf Val(txtrevenue.Text) > 50000 Then
txtpay.Text = 1000 + 0.12 * Val(txtrevenue.Text)
End If
End Sub

Private Sub cmdtax_Click()
If Val(txtincome.Text) > 80000 Then
txttax.Text = 4500 + 0.15 * Val(txtincome.Text)
ElseIf Val(txtincome.Text) <= 30000 Then
txttax.Text = 0.1 * Val(txtincome.Text)
End If
End Sub
