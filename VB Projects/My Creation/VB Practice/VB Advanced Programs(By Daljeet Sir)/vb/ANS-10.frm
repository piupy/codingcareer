VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3960
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7695
   LinkTopic       =   "Form1"
   ScaleHeight     =   3960
   ScaleWidth      =   7695
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "CLICK TO SEE STARS IN ASCENDING ORDER"
      Height          =   855
      Left            =   480
      TabIndex        =   0
      Top             =   1920
      Width           =   6495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For X = 1 To 5
For Y = 1 To X
Print "*"; "     ";
Next
Print
Next

End Sub
