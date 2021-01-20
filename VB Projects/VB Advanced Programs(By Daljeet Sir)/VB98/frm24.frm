VERSION 5.00
Begin VB.Form frm24 
   Caption         =   "Average Of Five Numbers by Using Arrays"
   ClientHeight    =   6270
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7140
   LinkTopic       =   "Form1"
   ScaleHeight     =   6270
   ScaleWidth      =   7140
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdavg 
      Caption         =   "AVERAGE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1200
      TabIndex        =   0
      Top             =   2400
      Width           =   4695
   End
End
Attribute VB_Name = "frm24"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdavg_Click()
Dim numberarray(5) As Single, index As Integer, sum As Single
For index = 1 To 5
numberarray(index) = InputBox("Enter A Number")
Next
For index = 1 To 5
sum = sum + numberarray(index)
Next
MsgBox "Average Is :" & sum / 5
End Sub
