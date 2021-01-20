VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   ClientHeight    =   4095
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7515
   LinkTopic       =   "Form1"
   ScaleHeight     =   4095
   ScaleWidth      =   7515
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command9 
      Caption         =   "REFRESH"
      Height          =   495
      Left            =   5400
      TabIndex        =   16
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command8 
      Caption         =   "EXIT"
      Height          =   495
      Left            =   4200
      TabIndex        =   15
      Top             =   2280
      Width           =   2415
   End
   Begin VB.CommandButton Command7 
      Caption         =   "DELETE"
      Height          =   495
      Left            =   4200
      TabIndex        =   14
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "UPDATE"
      Height          =   495
      Left            =   5400
      TabIndex        =   13
      Top             =   1320
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "NEW"
      Height          =   495
      Left            =   4200
      TabIndex        =   12
      Top             =   1320
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "PREVIOUS"
      Height          =   495
      Left            =   5400
      TabIndex        =   11
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "NEXT"
      Height          =   495
      Left            =   4200
      TabIndex        =   10
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "LAST"
      Height          =   495
      Left            =   5400
      TabIndex        =   9
      Top             =   360
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "FIRST"
      Height          =   495
      Left            =   4200
      TabIndex        =   8
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      DataField       =   "JOB"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      DataField       =   "SAL"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   2280
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      DataField       =   "ENAME"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   1560
      TabIndex        =   1
      Top             =   1800
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      DataField       =   "EMPNO"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   1320
      Width           =   1215
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   735
      Left            =   120
      Top             =   3240
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   1296
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
      UserName        =   ""
      Password        =   ""
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
   Begin VB.Label Label4 
      Caption         =   "job"
      Height          =   375
      Left            =   120
      TabIndex        =   7
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "salary"
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "ampname"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "ampid"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1320
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Adodc1.Recordset.MoveFirst
End Sub

Private Sub Command2_Click()
Adodc1.Recordset.MoveLast
End Sub

Private Sub Command3_Click()
Adodc1.Recordset.MoveNext
If Adodc1.Recordset.EOF Then
Adodc1.Recordset.MoveFirst
End If
End Sub

Private Sub Command4_Click()
Adodc1.Recordset.MovePrevious
If Adodc1.Recordset.BOF Then
Adodc1.Recordset.MoveLast
End If
End Sub

Private Sub Command5_Click()
Adodc1.Recordset.AddNew
End Sub

Private Sub Command6_Click()
Adodc1.Recordset.Update
End Sub

Private Sub Command7_Click()
Adodc1.Recordset.Delete
Adodc1.Recordset.MoveNext
If Adodc1.Recordset.EOF Then
Adodc1.Recordset.MoveFirst
End If
End Sub
