VERSION 5.00
Begin VB.Form Form10 
   Caption         =   "Form10"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form10"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Type A Number"
      Height          =   1095
      Left            =   1560
      TabIndex        =   0
      Top             =   840
      Width           =   3495
   End
End
Attribute VB_Name = "Form10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer

Private Sub Command1_Click()
a = InputBox("Enter The Number")
If a Mod 2 <> 0 Then
MsgBox "The Number You Have Entered Is An Odd Number"
Else: MsgBox "The Number You Have Entered Is An Even Number"
End If


End Sub
