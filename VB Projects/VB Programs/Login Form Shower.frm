VERSION 5.00
Begin VB.Form Form41 
   Caption         =   "Form41"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form41"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Login"
      Height          =   735
      Left            =   2040
      TabIndex        =   5
      Top             =   5040
      Width           =   3135
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      IMEMode         =   3  'DISABLE
      Left            =   3840
      PasswordChar    =   "*"
      TabIndex        =   4
      Text            =   "Text2"
      Top             =   3360
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   855
      Left            =   3720
      TabIndex        =   2
      Top             =   1920
      Width           =   2535
   End
   Begin VB.Label Label3 
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   360
      TabIndex        =   3
      Top             =   3360
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "Username"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   360
      TabIndex        =   1
      Top             =   1920
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Login Form"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3600
      TabIndex        =   0
      Top             =   480
      Width           =   2895
   End
End
Attribute VB_Name = "Form41"
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
