VERSION 5.00
Begin VB.Form Form11 
   Caption         =   "Form11"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form11"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text2 
      Height          =   855
      IMEMode         =   3  'DISABLE
      Left            =   3720
      PasswordChar    =   "*"
      TabIndex        =   4
      Text            =   "fdsfsfsfsd"
      Top             =   3720
      Width           =   2655
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   3720
      TabIndex        =   2
      Top             =   2520
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Login"
      Height          =   855
      Left            =   1800
      TabIndex        =   0
      Top             =   840
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "Password"
      Height          =   735
      Left            =   480
      TabIndex        =   3
      Top             =   3840
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "Username"
      Height          =   735
      Left            =   600
      TabIndex        =   1
      Top             =   2520
      Width           =   2295
   End
End
Attribute VB_Name = "Form11"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As Integer


Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
If StrComp(a, "admin") = 0 And StrComp(b, "12345") = 0 Then
MsgBox "Login Successful"
Else: MsgBox "Login Unsuccessful"
End If

End Sub

