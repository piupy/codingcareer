VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3795
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7665
   LinkTopic       =   "Form1"
   ScaleHeight     =   3795
   ScaleWidth      =   7665
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "CLICK TO GET SLANTING ASCENDINNG ORDER FROM5-1"
      Height          =   855
      Left            =   1080
      TabIndex        =   0
      Top             =   1920
      Width           =   5895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For X = 5 To 1 Step -1
For Y = 5 To X Step -1
Print Y; "  ";
Next
Print
Next
End Sub
