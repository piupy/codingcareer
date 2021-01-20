VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3945
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7575
   LinkTopic       =   "Form1"
   ScaleHeight     =   3945
   ScaleWidth      =   7575
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "exit"
      Height          =   375
      Left            =   4080
      TabIndex        =   2
      Top             =   3360
      Width           =   2415
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   1560
      TabIndex        =   1
      Top             =   2760
      Width           =   3855
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   2655
      Left            =   5400
      TabIndex        =   0
      Top             =   360
      Width           =   255
   End
   Begin VB.Shape Shape1 
      Height          =   1095
      Left            =   2520
      Top             =   720
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
End
End Sub

Private Sub HScroll1_Change()
Shape1.Width = HScroll.Value
End Sub

Private Sub VScroll1_Change()
Shape1.Width = vscroll.Value
End Sub

