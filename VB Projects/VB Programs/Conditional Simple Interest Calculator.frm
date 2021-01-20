VERSION 5.00
Begin VB.Form Form24 
   Caption         =   "Form24"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form24"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Find The Simple Interest"
      Height          =   1095
      Left            =   5040
      TabIndex        =   3
      Top             =   2520
      Width           =   1695
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Principal > 40,000"
      Height          =   735
      Left            =   480
      TabIndex        =   2
      Top             =   4200
      Width           =   3375
   End
   Begin VB.OptionButton Option2 
      Caption         =   "20,000 < Principal < 40,000"
      Height          =   735
      Left            =   480
      TabIndex        =   1
      Top             =   2880
      Width           =   3135
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Principal < 20,000"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   1680
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Conditional Simple Interest Calculator"
      Height          =   375
      Left            =   1920
      TabIndex        =   4
      Top             =   360
      Width           =   3975
   End
End
Attribute VB_Name = "Form24"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim p As Single, t  As Single, si As Single, r As Single


Private Sub Command1_Click()
p = InputBox("Enter The Principal Amount")
t = InputBox("Enter The Time")
If Option1.Value = True Then

r = 10
si = (p * r * t) / 100
MsgBox "The Simple Interest Is " & si
ElseIf Option2.Value = True Then
r = 15
si = (p * r * t) / 100
MsgBox "The Simple Interest Is " & si
ElseIf Option3.Value = True Then
r = 20
si = (p * r * t) / 100
MsgBox "The Simple Interest Is " & si
End If

End Sub

