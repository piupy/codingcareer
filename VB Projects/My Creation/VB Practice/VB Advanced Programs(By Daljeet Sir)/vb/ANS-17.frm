VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5130
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7500
   LinkTopic       =   "Form1"
   ScaleHeight     =   5130
   ScaleWidth      =   7500
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "CLECK TO SEE THE MULTIPLICATIN TABLES FROM 5-10"
      Height          =   855
      Left            =   960
      TabIndex        =   0
      Top             =   2640
      Width           =   5895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For X = 1 To 10
For Y = 5 To 10
Print Y; " * "; X; " = "; Y * X; "    ";
Next
Print
Next
End Sub
