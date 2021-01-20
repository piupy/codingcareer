VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4005
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7305
   LinkTopic       =   "Form1"
   ScaleHeight     =   4005
   ScaleWidth      =   7305
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "EVALUATE ELIGIBILITY"
      Height          =   855
      Left            =   2040
      TabIndex        =   2
      Top             =   1560
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3120
      TabIndex        =   1
      Top             =   600
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "ENTER YOUR AGE"
      Height          =   255
      Left            =   720
      TabIndex        =   0
      Top             =   720
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim X As Integer
X = Text1.Text
Call ABC(X)
Text1.Text = ""
End Sub

Private Sub ABC(X As Integer)
If X < 40 And X > 18 Then
MsgBox ("U R ELIGIBLE")
Else
MsgBox ("U R NOT ELIGIBLE")
End If

End Sub
