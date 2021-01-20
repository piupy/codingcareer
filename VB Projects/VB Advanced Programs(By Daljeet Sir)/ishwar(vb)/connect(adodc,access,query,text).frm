VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "ghfhfamasfdkljlks50894"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      DataField       =   "marks"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   3840
      TabIndex        =   7
      Top             =   3960
      Width           =   2175
   End
   Begin VB.TextBox Text3 
      DataField       =   "address"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   3720
      TabIndex        =   5
      Top             =   2760
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      DataField       =   "name"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   3720
      TabIndex        =   3
      Top             =   1440
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      DataField       =   "roll"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   3720
      TabIndex        =   1
      Top             =   360
      Width           =   2295
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   495
      Left            =   960
      Top             =   6000
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   873
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\ishwar\school.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\ishwar\school.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from student where marks>70"
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
   Begin VB.Label Label4 
      Caption         =   "phone number "
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   4080
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "address"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   2760
      Width           =   2415
   End
   Begin VB.Label Label2 
      Caption         =   "name"
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   1560
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "roll  number"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
