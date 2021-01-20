VERSION 5.00
Begin VB.Form Form5 
   BackColor       =   &H000000C0&
   Caption         =   "Form5"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form5"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Go To Form 6"
      Height          =   975
      Left            =   1560
      TabIndex        =   1
      Top             =   4320
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Check"
      Height          =   1035
      Left            =   1560
      TabIndex        =   0
      Top             =   2640
      Width           =   3735
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Boolean

Private Sub Command1_Click()
If a = "bat" Like "b?t" Then
Print a
Else: Print "false"
End If
End Sub

Private Sub Command2_Click()
Form6.Show

End Sub
