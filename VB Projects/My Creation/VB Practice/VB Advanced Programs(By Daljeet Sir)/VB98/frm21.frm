VERSION 5.00
Begin VB.Form frm21 
   Caption         =   "A Year Is Leao Year Or Not"
   ClientHeight    =   6330
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7125
   LinkTopic       =   "Form1"
   ScaleHeight     =   6330
   ScaleWidth      =   7125
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frm21"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
Dim yr
yr = Val(InputBox("Enter Year"))
If yr Mod 100 = 0 Then
If yr Mod 400 = 0 Then
MsgBox "It Is A Leap Year"
Else
MsgBox "It Is Not A Leap Year"
End If
ElseIf yr Mod 4 = 0 Then
MsgBox "It Is A Leap Year"
Else
MsgBox "It Is Not A Leap Year"
End If
End Sub

