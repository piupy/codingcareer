VERSION 5.00
Begin VB.Form frmCheckUser 
   BackColor       =   &H00C0FFC0&
   Caption         =   ":: User Login ::"
   ClientHeight    =   6060
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8055
   FillColor       =   &H00FFFFFF&
   ForeColor       =   &H00FFFFC0&
   LinkTopic       =   "Form2"
   ScaleHeight     =   6060
   ScaleWidth      =   8055
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   4680
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Login"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   840
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   4680
      Width           =   2895
   End
   Begin VB.TextBox txtPass 
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   14.25
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   3360
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   3600
      Width           =   3135
   End
   Begin VB.TextBox txtName 
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   14.25
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3360
      TabIndex        =   2
      Top             =   2880
      Width           =   3135
   End
   Begin VB.Label Label4 
      BackColor       =   &H00C0FFC0&
      Caption         =   "LOGIN FORM"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2880
      TabIndex        =   7
      Top             =   1920
      Width           =   1935
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "CLUB MEMBERSHIP SYSTEM"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   480
      TabIndex        =   6
      Top             =   600
      Width           =   7095
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   14.25
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   3720
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   14.25
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      TabIndex        =   0
      Top             =   3000
      Width           =   1215
   End
End
Attribute VB_Name = "frmCheckUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If txtName.Text = "admin" And txtPass.Text = "admin" Then
Me.Hide
Main.Show
Else

MsgBox "Incorrect UserName or Password"
txtName.SetFocus
End If
End Sub

Private Sub Command2_Click()
End
End Sub

Private Sub Label3_Click()

End Sub
