VERSION 5.00
Begin VB.Form frm8 
   Caption         =   "Stop Watch"
   ClientHeight    =   6210
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7155
   LinkTopic       =   "Form1"
   ScaleHeight     =   6210
   ScaleWidth      =   7155
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdstartagain 
      Caption         =   "START AGAIN"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   2160
      TabIndex        =   0
      Top             =   4680
      Width           =   3135
   End
   Begin VB.Timer tmrtimer 
      Interval        =   1000
      Left            =   600
      Top             =   5160
   End
   Begin VB.Label lblsec 
      Alignment       =   2  'Center
      Caption         =   "GET SET GO . . . . . ."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   1560
      TabIndex        =   1
      Top             =   1440
      Width           =   4575
   End
End
Attribute VB_Name = "frm8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer
Private Sub cmdstartagain_Click()
i = 0
End Sub
Private Sub tmrtimer_Timer()
i = i + 1
lblsec.Caption = i
End Sub
