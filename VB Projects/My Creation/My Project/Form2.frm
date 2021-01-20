VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Admin Login Panel"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Continue"
      BeginProperty Font 
         Name            =   "Vladimir Script"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   11760
      TabIndex        =   1
      Top             =   4080
      Width           =   3255
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Login"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5280
      TabIndex        =   0
      Top             =   9120
      Width           =   2535
   End
   Begin VB.PictureBox Picture1 
      Height          =   11055
      Left            =   -240
      Picture         =   "Form2.frx":0000
      ScaleHeight     =   10995
      ScaleWidth      =   27675
      TabIndex        =   2
      Top             =   0
      Width           =   27735
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         IMEMode         =   3  'DISABLE
         Left            =   6960
         PasswordChar    =   "*"
         TabIndex        =   6
         Top             =   6960
         Width           =   3375
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   6960
         TabIndex        =   5
         Top             =   4200
         Width           =   3375
      End
      Begin VB.Label Label3 
         Caption         =   $"Form2.frx":55508
         BeginProperty Font 
            Name            =   "Blackadder ITC"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   960
         TabIndex        =   7
         Top             =   840
         Width           =   13455
      End
      Begin VB.Label Label2 
         Caption         =   "Password :"
         BeginProperty Font 
            Name            =   "Blackadder ITC"
            Size            =   36
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   1680
         TabIndex        =   4
         Top             =   6960
         Width           =   4215
      End
      Begin VB.Label Label1 
         Caption         =   "Username :"
         BeginProperty Font 
            Name            =   "Blackadder ITC"
            Size            =   36
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   1680
         TabIndex        =   3
         Top             =   4200
         Width           =   4215
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As String
Dim b As String
a = Text1.Text
b = Text2.Text
If StrComp("rohit", a) = 0 And StrComp("sharma", b) = 0 Then
MsgBox "Login Successful", , "Congratulations"
Command2.Visible = True
Else: MsgBox "Invalid Username/Password", , "Sorry"
Unload Me
End If

End Sub

Private Sub Command2_Click()
Form4.Show
Unload Me

End Sub

Private Sub Form_Activate()
Command2.Visible = False
End Sub

