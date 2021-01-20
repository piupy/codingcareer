VERSION 5.00
Begin VB.Form frm18 
   Caption         =   "The * Pattern "
   ClientHeight    =   6165
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7170
   LinkTopic       =   "Form1"
   ScaleHeight     =   6165
   ScaleWidth      =   7170
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frm18"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
Dim x As Integer
Dim y As Integer
For x = 1 To 5
For y = 1 To x
Print "*";
Next y
Print
Next x
End Sub

