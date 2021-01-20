VERSION 5.00
Begin VB.Form frm3 
   Caption         =   "Tatal And Average Of Three Numbers"
   ClientHeight    =   6165
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7215
   LinkTopic       =   "Form1"
   ScaleHeight     =   6165
   ScaleWidth      =   7215
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdexit 
      Caption         =   "E&XIT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2520
      TabIndex        =   8
      Top             =   5640
      Width           =   1335
   End
   Begin VB.CommandButton cmdavg 
      Caption         =   "AVERAGE"
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
      Left            =   720
      TabIndex        =   7
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton cmdtot 
      Caption         =   "TOTAL"
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
      Left            =   720
      TabIndex        =   6
      Top             =   3240
      Width           =   1575
   End
   Begin VB.TextBox txtavg 
      Height          =   615
      Left            =   3360
      TabIndex        =   5
      Top             =   4440
      Width           =   2655
   End
   Begin VB.TextBox txttot 
      Height          =   615
      Left            =   3360
      TabIndex        =   4
      Top             =   3240
      Width           =   2655
   End
   Begin VB.TextBox txtnum3 
      Height          =   495
      Left            =   5280
      TabIndex        =   3
      Top             =   1800
      Width           =   1335
   End
   Begin VB.TextBox txtnum2 
      Height          =   495
      Left            =   2880
      TabIndex        =   2
      Top             =   1800
      Width           =   1335
   End
   Begin VB.TextBox txtnum1 
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label lbl1 
      Alignment       =   2  'Center
      Caption         =   "Enter Three Numbers "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   0
      Top             =   480
      Width           =   6015
   End
End
Attribute VB_Name = "frm3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdavg_Click()
Dim sngnum1 As Single, sngnum2 As Single, sngnum3 As Single
Dim sngavg As Single
sngnum1 = Val(txtnum1.Text)
sngnum2 = Val(txtnum2.Text)
sngnum3 = Val(txtnum3.Text)
sngavg = (sngnum1 + sngnum2 + sngnum3) / 3
txtavg.Text = Str(sngavg)
End Sub

Private Sub cmdexit_Click()
End
End Sub

Private Sub cmdtot_Click()
Dim sngnum1 As Single, sngnum2 As Single, sngnum3 As Single
Dim sngtot As Single
sngnum1 = Val(txtnum1.Text)
sngnum2 = Val(txtnum2.Text)
sngnum3 = Val(txtnum3.Text)
sngtot = sngnum1 + sngnum2 + sngnum3
txttot.Text = Str(sngtot)
End Sub
