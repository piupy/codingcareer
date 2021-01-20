VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form3 
   BackColor       =   &H00808000&
   Caption         =   "Faculty Login"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form3"
   ScaleHeight     =   8430
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Height          =   15135
      Left            =   0
      Picture         =   "Form3.frx":0000
      ScaleHeight     =   15075
      ScaleWidth      =   15435
      TabIndex        =   0
      Top             =   0
      Width           =   15495
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   330
         Left            =   11160
         Top             =   8880
         Visible         =   0   'False
         Width           =   3255
         _ExtentX        =   5741
         _ExtentY        =   582
         ConnectMode     =   0
         CursorLocation  =   3
         IsolationLevel  =   -1
         ConnectionTimeout=   15
         CommandTimeout  =   30
         CursorType      =   3
         LockType        =   3
         CommandType     =   1
         CursorOptions   =   0
         CacheSize       =   50
         MaxRecords      =   0
         BOFAction       =   0
         EOFAction       =   0
         ConnectStringType=   1
         Appearance      =   1
         BackColor       =   -2147483643
         ForeColor       =   -2147483640
         Orientation     =   0
         Enabled         =   -1
         Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Lucky\Desktop\My Project\faculty.mdb;Persist Security Info=False"
         OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Lucky\Desktop\My Project\faculty.mdb;Persist Security Info=False"
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   "select fname from login"
         Caption         =   "Adodc2"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         _Version        =   393216
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Login"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   5280
         TabIndex        =   7
         Top             =   9000
         Width           =   1695
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Click Here To Add Your Username"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   11400
         TabIndex        =   6
         Top             =   6720
         Width           =   2895
      End
      Begin VB.ComboBox Combo2 
         DataSource      =   "Adodc2"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   10680
         TabIndex        =   5
         Text            =   "---------List of Faculties---------"
         Top             =   6120
         Width           =   4215
      End
      Begin VB.TextBox Text4 
         DataSource      =   "Adodc2"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         IMEMode         =   3  'DISABLE
         Left            =   5160
         PasswordChar    =   "*"
         TabIndex        =   4
         Top             =   7800
         Width           =   3975
      End
      Begin VB.TextBox Text3 
         DataSource      =   "Adodc2"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   5160
         TabIndex        =   2
         Top             =   7080
         Width           =   3975
      End
      Begin VB.Label Label1 
         BeginProperty Font 
            Name            =   "Chiller"
            Size            =   72
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3735
         Left            =   3600
         TabIndex        =   9
         Top             =   2280
         Width           =   6135
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Caption         =   "Faculty Login"
         BeginProperty Font 
            Name            =   "Chiller"
            Size            =   48
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   6120
         TabIndex        =   8
         Top             =   360
         Width           =   5295
      End
      Begin VB.Label Label4 
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "Edwardian Script ITC"
            Size            =   21.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2640
         TabIndex        =   3
         Top             =   7800
         Width           =   2535
      End
      Begin VB.Label Label3 
         Caption         =   "Username"
         BeginProperty Font 
            Name            =   "Edwardian Script ITC"
            Size            =   21.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2640
         TabIndex        =   1
         Top             =   7080
         Width           =   2535
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X As String, Y As String
Private Sub Command3_Click()
If Combo2.ListIndex = 0 Then
Text3.Text = "manpreet singh"
ElseIf Combo2.ListIndex = 1 Then
Text3.Text = "ashutosh gaur"
ElseIf Combo2.ListIndex = 2 Then
Text3.Text = "santanoo patnaik"
ElseIf Combo2.ListIndex = 3 Then
Text3.Text = "surender singh"
ElseIf Combo2.ListIndex = 4 Then
Text3.Text = "megha sehgal"
ElseIf Combo2.ListIndex = 5 Then
Text3.Text = "himani bhatia"
End If
End Sub

Private Sub Command4_Click()
X = Text3.Text
Y = Text4.Text
Adodc2.CommandType = adCmdText
Adodc2.RecordSource = "select count(*) from login where fname = '" & Text3.Text & "' and fpass='" & Text4.Text & " ' "
Adodc2.Refresh
If Adodc2.Recordset(0) > 0 Then
MsgBox "Login Successful", , "Congratulations"
If StrComp("manpreet singh", X) = 0 And StrComp("manp", Y) = 0 Then
Form8.Show
Unload Me
ElseIf StrComp("ashutosh gaur", X) = 0 And StrComp("ashu", Y) = 0 Then
Form10.Show
Unload Me
ElseIf StrComp("santanoo patnaik", X) = 0 And StrComp("sant", Y) = 0 Then
Form11.Show
Unload Me
ElseIf StrComp("surender singh", X) = 0 And StrComp("sure", Y) = 0 Then
Form12.Show
Unload Me
ElseIf StrComp("megha sehgal", X) = 0 And StrComp("megh", Y) = 0 Then
Form13.Show
Unload Me
ElseIf StrComp("himani bhatia", X) = 0 And StrComp("hima", Y) = 0 Then
Form14.Show
Unload Me
End If
Else: MsgBox "Invalid Username/Password", , "Invalid"
Unload Me
End If
End Sub

Private Sub Form_Activate()
Label1.Caption = Now
End Sub
Private Sub Form_Load()
Adodc2.Recordset.MoveFirst
While Not Adodc2.Recordset.EOF = True
Combo2.AddItem Adodc2.Recordset(0)
Adodc2.Recordset.MoveNext
Wend
End Sub

Private Sub Picture1_Click()

End Sub
