VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form2 
   BackColor       =   &H0080C0FF&
   Caption         =   "Login Form"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   Picture         =   "Form2.frx":0000
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   5280
      Top             =   7440
      Visible         =   0   'False
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\My Creation\Transport Information System\transport.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\My Creation\Transport Information System\transport.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "cust"
      Caption         =   "Adodc1"
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
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   0  'None
      Height          =   6615
      Left            =   240
      TabIndex        =   0
      Top             =   1320
      Width           =   14535
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFC0&
         Caption         =   " Login"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   5400
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   4560
         Width           =   2415
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
         Height          =   975
         IMEMode         =   3  'DISABLE
         Left            =   6120
         PasswordChar    =   "*"
         TabIndex        =   4
         Top             =   2880
         Width           =   5055
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
         Height          =   975
         Left            =   6120
         TabIndex        =   3
         Top             =   1440
         Width           =   5055
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00FFC0C0&
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
         Height          =   975
         Left            =   3120
         TabIndex        =   2
         Top             =   2880
         Width           =   3015
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00FFC0C0&
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
         Height          =   975
         Left            =   3240
         TabIndex        =   1
         Top             =   1440
         Width           =   2895
      End
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C000&
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
      Height          =   735
      Left            =   1080
      TabIndex        =   6
      Top             =   240
      Width           =   12975
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As String
Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
Adodc1.CommandType = adCmdText
Adodc1.RecordSource = "select count(*) from cust where uname = ' " & Text1.Text & " ' and upass = ' " & Text2.Text & " ' "
Adodc1.Refresh
If Adodc1.Recordset(0) > 0 Then
MsgBox "Login Successful", vbOKCancel + vbInformation, "Congratulations"
frmSplash.Show
Unload Me
Else: MsgBox "Invalid Username/Password", vbOKCancel + vbCritical, "Sorry"
End If
End Sub

