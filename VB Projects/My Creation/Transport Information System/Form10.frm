VERSION 5.00
Begin VB.Form Form10 
   Caption         =   "Admin Login Form"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form10"
   Picture         =   "Form10.frx":0000
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   6615
      Left            =   240
      TabIndex        =   0
      Top             =   1440
      Width           =   14655
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         IMEMode         =   3  'DISABLE
         Left            =   6720
         PasswordChar    =   "*"
         TabIndex        =   6
         Top             =   3360
         Width           =   4695
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   6720
         TabIndex        =   4
         Top             =   1920
         Width           =   4695
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Login"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   5400
         TabIndex        =   1
         Top             =   5160
         Width           =   2055
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0C0FF&
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   2880
         TabIndex        =   5
         Top             =   3360
         Width           =   3855
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0C0FF&
         Caption         =   "Username"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   2880
         TabIndex        =   3
         Top             =   1920
         Width           =   3855
      End
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF00&
      Caption         =   "Welcome To The Admin Login Panel"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2880
      TabIndex        =   7
      Top             =   240
      Width           =   9975
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFF00&
      Caption         =   "Please Enter Your Valid Username and Password"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1200
      TabIndex        =   2
      Top             =   840
      Width           =   13335
   End
End
Attribute VB_Name = "Form10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
If StrComp(a, "admin") = 0 And StrComp(b, "rohit") = 0 Then
MsgBox "Login Successful", vbInformation, "Successful"
Form9.Show
Unload Me
Else: MsgBox "Invalid Username/Password", vbCritical, "Sorry"
End If
End Sub

