VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text8 
      DataField       =   "DEPTNO"
      DataSource      =   "Adodc1"
      Height          =   615
      Left            =   4200
      TabIndex        =   15
      Top             =   6240
      Width           =   2295
   End
   Begin VB.TextBox Text7 
      DataField       =   "COMM"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   4200
      TabIndex        =   13
      Top             =   5400
      Width           =   2175
   End
   Begin VB.TextBox Text6 
      DataField       =   "SAL"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   4320
      TabIndex        =   11
      Top             =   4560
      Width           =   2055
   End
   Begin VB.TextBox Text5 
      DataField       =   "HIREDATE"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   4320
      TabIndex        =   9
      Top             =   3720
      Width           =   2055
   End
   Begin VB.TextBox Text4 
      DataField       =   "MGR"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   4320
      TabIndex        =   6
      Top             =   2760
      Width           =   2055
   End
   Begin VB.TextBox Text3 
      DataField       =   "JOB"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   4320
      TabIndex        =   4
      Top             =   1920
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      DataField       =   "ENAME"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   4320
      TabIndex        =   2
      Top             =   1080
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      DataField       =   "EMPNO"
      DataSource      =   "Adodc1"
      Height          =   495
      Left            =   4320
      TabIndex        =   0
      Top             =   360
      Width           =   2055
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   615
      Left            =   960
      Top             =   7800
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   1085
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
      Connect         =   "Provider=MSDAORA.1;Password=tiger;User ID=scott;Persist Security Info=True"
      OLEDBString     =   "Provider=MSDAORA.1;Password=tiger;User ID=scott;Persist Security Info=True"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   "scott"
      Password        =   "tiger"
      RecordSource    =   "EMP"
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
   Begin VB.Label Label8 
      Caption         =   "DEPARTMENT NUMBER"
      Height          =   615
      Left            =   480
      TabIndex        =   14
      Top             =   6240
      Width           =   2655
   End
   Begin VB.Label Label7 
      Caption         =   "COMMISSION"
      Height          =   615
      Left            =   480
      TabIndex        =   12
      Top             =   5400
      Width           =   2535
   End
   Begin VB.Label Label6 
      Caption         =   "SALARY"
      Height          =   495
      Left            =   480
      TabIndex        =   10
      Top             =   4560
      Width           =   2535
   End
   Begin VB.Label Label5 
      Caption         =   "HIREDATE"
      Height          =   495
      Left            =   480
      TabIndex        =   8
      Top             =   3720
      Width           =   2535
   End
   Begin VB.Label Label4 
      Caption         =   "MGR"
      Height          =   495
      Left            =   480
      TabIndex        =   7
      Top             =   2880
      Width           =   2535
   End
   Begin VB.Label Label3 
      Caption         =   "EMPLOYEE JOB"
      Height          =   495
      Left            =   600
      TabIndex        =   5
      Top             =   1920
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "EMPLOYEE NAME"
      Height          =   375
      Left            =   480
      TabIndex        =   3
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "EMPLOYEE NUMBER"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   360
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
