VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4980
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7080
   LinkTopic       =   "Form1"
   ScaleHeight     =   4980
   ScaleWidth      =   7080
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "AUTHENTICATE"
      Height          =   495
      Left            =   4440
      TabIndex        =   4
      Top             =   1080
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   2520
      PasswordChar    =   "²"
      TabIndex        =   3
      Top             =   1440
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2520
      TabIndex        =   2
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "PASSWORD"
      Height          =   255
      Left            =   1080
      TabIndex        =   1
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "USERID"
      Height          =   255
      Left            =   1440
      TabIndex        =   0
      Top             =   840
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "HEMANT" And Text2.Text = "KKKKK" Then
MsgBox ("ACCEPTED")
Else
MsgBox ("ACCESS DENIED")
End If

End Sub


