VERSION 5.00
Begin VB.Form Form30 
   Caption         =   "Form30"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form30"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get The First 10 Natural Numbers"
      Height          =   735
      Left            =   2760
      TabIndex        =   1
      Top             =   2520
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Do Loop While"
      Height          =   615
      Left            =   2640
      TabIndex        =   0
      Top             =   480
      Width           =   4215
   End
End
Attribute VB_Name = "Form30"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
i = 1
Do
Print i
i = i + 1
Loop While i <= 10

End Sub

