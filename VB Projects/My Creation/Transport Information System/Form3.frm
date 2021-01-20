VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00808000&
   Caption         =   "Sign Up Form"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form3"
   Picture         =   "Form3.frx":0000
   ScaleHeight     =   8430
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFF80&
      BorderStyle     =   0  'None
      Height          =   7455
      Left            =   120
      TabIndex        =   0
      Top             =   840
      Width           =   14895
      Begin VB.CommandButton Command2 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Go To Main Form"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   8640
         Style           =   1  'Graphical
         TabIndex        =   17
         Top             =   6480
         Width           =   2535
      End
      Begin VB.TextBox Text5 
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
         Left            =   8760
         TabIndex        =   12
         Top             =   4560
         Width           =   3855
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Caption         =   "Create My Account"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4680
         Style           =   1  'Graphical
         TabIndex        =   14
         Top             =   6480
         Width           =   3015
      End
      Begin VB.CheckBox Check1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "I Hereby Agree To The Terms And Conditions of The Transport Department."
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2160
         TabIndex        =   13
         Top             =   5640
         Width           =   10575
      End
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   645
         Left            =   7680
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   3720
         Width           =   5055
      End
      Begin VB.TextBox Text4 
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
         IMEMode         =   3  'DISABLE
         Left            =   7680
         PasswordChar    =   "*"
         TabIndex        =   8
         Top             =   2880
         Width           =   5055
      End
      Begin VB.TextBox Text3 
         DataSource      =   "Adodc1"
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
         Left            =   7680
         TabIndex        =   7
         Top             =   2040
         Width           =   5055
      End
      Begin VB.TextBox Text2 
         DataSource      =   "Adodc1"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   645
         Left            =   7680
         TabIndex        =   6
         Top             =   1080
         Width           =   5055
      End
      Begin VB.TextBox Text1 
         DataSource      =   "Adodc1"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   645
         Left            =   7680
         TabIndex        =   5
         Top             =   240
         Width           =   5055
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         Caption         =   "+91"
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
         Left            =   7800
         TabIndex        =   16
         Top             =   4560
         Width           =   975
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H00C0E0FF&
         Caption         =   "* Contact Number :"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3720
         TabIndex        =   11
         Top             =   4560
         Width           =   3975
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BackColor       =   &H00C0E0FF&
         Caption         =   "* Gender : "
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4920
         TabIndex        =   9
         Top             =   3720
         Width           =   2775
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H00C0E0FF&
         Caption         =   "* Choose Your Password :"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2760
         TabIndex        =   4
         Top             =   2880
         Width           =   4935
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H00C0E0FF&
         Caption         =   "* Choose Your Username :"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2760
         TabIndex        =   3
         Top             =   2040
         Width           =   4935
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00C0E0FF&
         Caption         =   "* Last Name :"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4440
         TabIndex        =   2
         Top             =   1080
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00C0E0FF&
         Caption         =   "* First Name :"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4440
         TabIndex        =   1
         Top             =   240
         Width           =   3255
      End
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackColor       =   &H00C0FFFF&
      Caption         =   "Please Fill Your Necessary Details ( All Fields Are Mandatory ) :"
      BeginProperty Font 
         Name            =   "Monotype Corsiva"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   480
      TabIndex        =   15
      Top             =   120
      Width           =   14295
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
Command1.Enabled = (Check1.Value = Checked)
End Sub

Private Sub Command1_Click()
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\transport.mdb;"
con.Open
a = Text1.Text
b = Text2.Text
c = Text3.Text
d = Text4.Text
e = Text5.Text
If Len(Trim(Text1.Text)) > 0 And Len(Trim(Text2.Text)) > 0 And Len(Trim(Text3.Text)) > 0 And Len(Trim(Text4.Text)) > 0 And Len(Trim(Text5.Text)) > 0 Then
con.Execute ("insert into cust values (' " & Text1.Text & " ',' " & Text2.Text & " ',' " & Text3.Text & " ',' " & Text4.Text & " ',' " & Combo1.Text & " ',' " & Text5.Text & " ')")
con.Close
MsgBox "Sign Up Complete.", vbInformation, "Success"
Command1.Enabled = False
Check1.Enabled = False
Command2.Visible = True
Unload Me
Else: MsgBox "You Can't Leave Any Mandatory Field Blank.", vbCritical, "Something Went Wrong."
End If
End Sub

Private Sub Command2_Click()
Form1.Show
End Sub

Private Sub Form_Load()
Command1.Enabled = False
Combo1.AddItem "Male"
Combo1.AddItem "Female"
Command2.Visible = False
End Sub

