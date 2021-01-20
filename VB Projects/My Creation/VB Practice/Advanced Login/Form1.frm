VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6600
      TabIndex        =   5
      Top             =   4200
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6600
      TabIndex        =   4
      Top             =   3360
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Login"
      Height          =   615
      Left            =   5280
      TabIndex        =   3
      Top             =   5400
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2880
      TabIndex        =   2
      Top             =   4200
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2880
      TabIndex        =   1
      Top             =   3360
      Visible         =   0   'False
      Width           =   2415
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   3720
      Style           =   2  'Dropdown List
      TabIndex        =   0
      Top             =   2040
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
If Combo1.ListIndex = 0 Then
Text1.Visible = True
Text2.Visible = True
Text3.Visible = False
Text4.Visible = False
Text3.Text = Clear
Text4.Text = Clear
Text1.Text = "Admin"
ElseIf Combo1.ListIndex = 1 Then
Text1.Visible = False
Text2.Visible = False
Text3.Visible = True
Text4.Visible = True
Text1.Text = Clear
Text2.Text = Clear
Text3.Text = "User"
End If
End Sub

Private Sub Command1_Click()
If StrComp("Admin", Text1.Text) = 0 And StrComp("rohit", Text2.Text) = 0 Then
MsgBox "Success"
ElseIf StrComp("User", Text3.Text) = 0 And StrComp("sharma", Text4.Text) = 0 Then
MsgBox "Success"
Else: MsgBox "Login Failure"
End If
End Sub

Private Sub Form_Load()
Combo1.AddItem "Admin"
Combo1.AddItem "User"
End Sub
