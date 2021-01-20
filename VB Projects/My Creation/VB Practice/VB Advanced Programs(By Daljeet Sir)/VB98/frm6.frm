VERSION 5.00
Begin VB.Form frm6 
   Caption         =   "Speed Program"
   ClientHeight    =   6195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   ScaleHeight     =   6195
   ScaleWidth      =   7200
   StartUpPosition =   3  'Windows Default
   Begin VB.HScrollBar hsbspeed 
      Height          =   855
      Left            =   120
      Max             =   100
      Min             =   10
      TabIndex        =   1
      Top             =   4800
      Value           =   10
      Width           =   6855
   End
   Begin VB.Label lblspeed 
      Alignment       =   2  'Center
      Caption         =   "50 KMPH"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   1920
      TabIndex        =   0
      Top             =   1560
      Width           =   3495
   End
End
Attribute VB_Name = "frm6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub hsbspeed_Change()
lblspeed.Caption = Str(hsbspeed.Value) + " KMPH "
End Sub
