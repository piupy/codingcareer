VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form4 
   Caption         =   "Control Panel"
   ClientHeight    =   3030
   ClientLeft      =   225
   ClientTop       =   1455
   ClientWidth     =   4560
   LinkTopic       =   "Form4"
   ScaleHeight     =   10650
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   360
      Top             =   6960
      Visible         =   0   'False
      Width           =   4935
      _ExtentX        =   8705
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
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Form4.frx":0000
      Height          =   3615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   6376
      _Version        =   393216
      ColumnHeaders   =   -1  'True
      HeadLines       =   1
      RowHeight       =   24
      AllowAddNew     =   -1  'True
      AllowDelete     =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin MSDataGridLib.DataGrid DataGrid2 
      Bindings        =   "Form4.frx":0015
      Height          =   3615
      Left            =   5760
      TabIndex        =   2
      Top             =   0
      Visible         =   0   'False
      Width           =   9375
      _ExtentX        =   16536
      _ExtentY        =   6376
      _Version        =   393216
      ColumnHeaders   =   -1  'True
      HeadLines       =   1
      RowHeight       =   24
      AllowAddNew     =   -1  'True
      AllowDelete     =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox Picture1 
      Height          =   20175
      Left            =   -120
      Picture         =   "Form4.frx":002A
      ScaleHeight     =   20115
      ScaleWidth      =   15435
      TabIndex        =   1
      Top             =   -4800
      Width           =   15495
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   375
         Left            =   7080
         Top             =   11760
         Visible         =   0   'False
         Width           =   4815
         _ExtentX        =   8493
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
         Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Lucky\Desktop\My Project\faculty.mdb;Persist Security Info=False"
         OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Lucky\Desktop\My Project\faculty.mdb;Persist Security Info=False"
         OLEDBFile       =   ""
         DataSourceName  =   ""
         OtherAttributes =   ""
         UserName        =   ""
         Password        =   ""
         RecordSource    =   "feedback"
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
   End
   Begin VB.Menu mnuAllUsersandTheirPasswords 
      Caption         =   "       All &Users &and &Their &Passwords     "
   End
   Begin VB.Menu mnuFeedbacks 
      Caption         =   "                      All &Feedbacks"
   End
   Begin VB.Menu mnuAllTheReports 
      Caption         =   "                   All &The &Reports"
      Begin VB.Menu mnuManpreetSingh 
         Caption         =   "   Manpreet &Singh"
      End
      Begin VB.Menu mnuAshutoshGaur 
         Caption         =   "   Ashutosh &Gaur"
      End
      Begin VB.Menu mnusantanooPatnaik 
         Caption         =   "   Santanoo &Patnaik"
      End
      Begin VB.Menu mnuSurenderSingh 
         Caption         =   "   Surender &Singh"
      End
      Begin VB.Menu mnuMeghaSehgal 
         Caption         =   "   Megha &Sehgal"
      End
      Begin VB.Menu mnuHimaniBhatia 
         Caption         =   "   Himani &Bhatia"
      End
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuAllUsers_Click()


End Sub

Private Sub Form_Activate()
DataGrid1.Visible = False
DataGrid2.Visible = False
End Sub

Private Sub mnuAllUsersandTheirPasswords_Click()
DataGrid1.Visible = True
End Sub

Private Sub mnuAshutoshGaur_Click()
DataReport2.Show
End Sub

Private Sub mnuFeedbacks_Click()
DataGrid2.Visible = True
End Sub

Private Sub mnuHimaniBhatia_Click()
DataReport6.Show
End Sub

Private Sub mnuManpreetSingh_Click()
DataReport1.Show

End Sub

Private Sub mnuMeghaSehgal_Click()
DataReport5.Show
End Sub

Private Sub mnusantanooPatnaik_Click()
DataReport3.Show
End Sub

Private Sub mnuSurenderSingh_Click()
DataReport4.Show
End Sub
