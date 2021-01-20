VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3615
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7065
   LinkTopic       =   "Form1"
   ScaleHeight     =   3615
   ScaleWidth      =   7065
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "CLICK TO PRINT 5-1 IN UP SIDE SLANTING ORDER"
      Height          =   735
      Left            =   1320
      TabIndex        =   0
      Top             =   1560
      Width           =   5175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For X = 1 To 5
For Y = 5 To X
Print Y; "";
Next
Print
Next
End Sub
