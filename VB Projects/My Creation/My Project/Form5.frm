VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form5 
   BackColor       =   &H00400000&
   Caption         =   "Sign Up Form"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form5"
   ScaleHeight     =   10950
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture2 
      Height          =   3135
      Left            =   1920
      Picture         =   "Form5.frx":0000
      ScaleHeight     =   3075
      ScaleWidth      =   11355
      TabIndex        =   5
      Top             =   0
      Width           =   11415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Add"
      BeginProperty Font 
         Name            =   "Edwardian Script ITC"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3840
      TabIndex        =   2
      Top             =   7680
      Width           =   5295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save"
      BeginProperty Font 
         Name            =   "Edwardian Script ITC"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   10680
      TabIndex        =   3
      Top             =   7560
      Width           =   2655
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   495
      Left            =   5640
      Top             =   10200
      Visible         =   0   'False
      Width           =   4695
      _ExtentX        =   8281
      _ExtentY        =   873
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Lucky\Desktop\My Project\faculty.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Lucky\Desktop\My Project\faculty.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "login"
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
   Begin VB.TextBox Text2 
      DataField       =   "fpass"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      IMEMode         =   3  'DISABLE
      Left            =   6000
      PasswordChar    =   "*"
      TabIndex        =   1
      Top             =   5280
      Width           =   4935
   End
   Begin VB.TextBox Text1 
      DataField       =   "fname"
      DataSource      =   "Adodc1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   6000
      TabIndex        =   0
      Top             =   4080
      Width           =   4935
   End
   Begin VB.PictureBox Picture1 
      Height          =   8055
      Left            =   720
      Picture         =   "Form5.frx":1886E
      ScaleHeight     =   7995
      ScaleWidth      =   13515
      TabIndex        =   4
      Top             =   3120
      Width           =   13575
      Begin VB.Label Label2 
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "Chiller"
            Size            =   48
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   1200
         TabIndex        =   7
         Top             =   2160
         Width           =   3495
      End
      Begin VB.Label Label1 
         Caption         =   "Username"
         BeginProperty Font 
            Name            =   "Chiller"
            Size            =   48
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   1080
         TabIndex        =   6
         Top             =   960
         Width           =   3615
      End
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As String
Private Sub Command1_Click()
Adodc1.Recordset.AddNew
Text1.Enabled = True
Text2.Enabled = True
a = Text1.Text
b = Text2.Text
End Sub
Private Sub Command2_Click()
If Len(Trim(Text1.Text)) > 0 And Len(Trim(Text2.Text)) > 0 Then
Adodc1.Recordset.Update
MsgBox "New Record Added Successfully", , "Added"
Form1.Show
Else: MsgBox "You Have Entered Invalid Username/Password", , "Sorry"
End If
Unload Me
End Sub
Private Sub Form_Activate()
Text1.Enabled = False
Text2.Enabled = False
End Sub

Private Sub Text1_Change()
Command2.Enabled = (Len(Trim(Text1.Text)) > 0)

End Sub

Private Sub Text2_Change()
Command2.Enabled = (Len(Trim(Text2.Text)) > 0)
End Sub
