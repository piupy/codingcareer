VERSION 5.00
Begin VB.Form Form35 
   Caption         =   "Form35"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form35"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here For Odd Numbers"
      Height          =   735
      Left            =   4320
      TabIndex        =   2
      Top             =   2760
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here For Even Numbers"
      Height          =   735
      Left            =   1320
      TabIndex        =   1
      Top             =   2760
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "First 5 Even or Odd Numbers"
      Height          =   735
      Left            =   1680
      TabIndex        =   0
      Top             =   720
      Width           =   4095
   End
End
Attribute VB_Name = "Form35"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
i = 2
Do While i <= 10
Print i
i = i + 2
Loop

End Sub

Private Sub Command2_Click()
i = 1
Do While i <= 10
Print i
i = i + 2
Loop

End Sub
