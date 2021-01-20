VERSION 5.00
Begin VB.Form Form33 
   Caption         =   "Form33"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form33"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Click Here To Get Numbers From 1 To 100  Divisible By 5"
      Height          =   1215
      Left            =   2520
      TabIndex        =   2
      Top             =   3960
      Width           =   3135
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Get Numbers From 1 To 100 Divisible By 3"
      Height          =   1215
      Left            =   2400
      TabIndex        =   1
      Top             =   2160
      Width           =   3015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get Numbers From 1 To 100 Divisible By 2"
      Height          =   975
      Left            =   2400
      TabIndex        =   0
      Top             =   480
      Width           =   2775
   End
End
Attribute VB_Name = "Form33"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
i = 1
Do While i <= 100
If i Mod 2 = 0 Then
Print i
End If
i = i + 1
Loop
End Sub

Private Sub Command2_Click()
i = 1
Do While i <= 100
If i Mod 3 = 0 Then
Print i
End If
i = i + 1
Loop
End Sub

Private Sub Command3_Click()
i = 1
Do While i <= 100
If i Mod 5 = 0 Then
Print i
End If
i = i + 1
Loop
End Sub


