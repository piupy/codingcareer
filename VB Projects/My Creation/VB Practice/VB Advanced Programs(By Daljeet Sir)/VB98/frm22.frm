VERSION 5.00
Begin VB.Form frm22 
   Caption         =   "Values In Descending Order"
   ClientHeight    =   6375
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7065
   LinkTopic       =   "Form1"
   ScaleHeight     =   6375
   ScaleWidth      =   7065
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "frm22"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
a = 7: b = 4: c = 10
Dim big, mid, low
If a >= b And a >= c Then
big = a
ElseIf b >= a And b >= c Then
big = b
ElseIf c >= a And c >= b Then
big = c
End If
If big = a Then
If b >= c Then
mid = b: low = c
Else
mid = c: low = b
End If
ElseIf big = b Then
If a >= c Then
mid = a: low = c
Else
mid = c: low = a
End If
Else
If a >= b Then
mid = a: low = b
Else
mid = b: low = a
End If
End If
Print big, mid, low
End Sub

