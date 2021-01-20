VERSION 5.00
Begin VB.Form frm30 
   Caption         =   "Fibonnaci Numbers"
   ClientHeight    =   6330
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7170
   LinkTopic       =   "Form1"
   ScaleHeight     =   6330
   ScaleWidth      =   7170
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox pic1 
      Height          =   1935
      Left            =   1560
      ScaleHeight     =   1875
      ScaleWidth      =   4035
      TabIndex        =   0
      Top             =   1920
      Width           =   4095
   End
End
Attribute VB_Name = "frm30"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
pic1.Print "1st Fibonacci Numbers"
Dim a As Integer
Dim b As Integer
a = 1
For i = 1 To 20
Print a
a = a + b
b = a - b
Next i
End Sub



