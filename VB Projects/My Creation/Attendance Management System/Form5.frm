VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form5 
   BackColor       =   &H00C0C0FF&
   Caption         =   "Form5"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form5"
   ScaleHeight     =   8430
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command5 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Attendance Percentage"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   5760
      Width           =   3735
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Total Number of Entries"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   5760
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   5040
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0FFFF&
      Caption         =   "My Monthly Attendance"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   5040
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0FFFF&
      Caption         =   "Save"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5040
      Width           =   2295
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   495
      Left            =   2280
      Top             =   3960
      Visible         =   0   'False
      Width           =   5055
      _ExtentX        =   8916
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
      Connect         =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\My Creation\Attendance Management System\adodb.mdb;Persist Security Info=False"
      OLEDBString     =   "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\My Creation\Attendance Management System\adodb.mdb;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "att"
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
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   1080
      Top             =   3000
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Present"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   735
      Left            =   3360
      TabIndex        =   3
      ToolTipText     =   "Tick This To Mark Present or Don't Tick To Mark Absent"
      Top             =   2520
      Width           =   3135
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      Caption         =   "Time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   7080
      TabIndex        =   2
      Top             =   720
      Width           =   2895
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   3720
      TabIndex        =   1
      Top             =   720
      Width           =   2895
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      Caption         =   "Day"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   720
      Width           =   2175
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
Adodc1.CommandType = adCmdText
Adodc1.RecordSource = "select count(*) from att where date1 = ' " & Format(Now, "dd-mm-yyyy") & " '"
Adodc1.Refresh
If Adodc1.Recordset(0) > 0 Then
MsgBox "You Already Marked Today's Attendance.", vbInformation
Check1.Enabled = False
Command1.Enabled = False
End If
End Sub

Private Sub Command1_Click()
con.ConnectionString = "Provider=Microsoft.Jet.Oledb.4.0;Data Source=" & App.Path & "\adodb.mdb"
con.Open
rst.Open "select * from att", con, adOpenDynamic, adLockOptimistic, adCmdText
If Check1.Value = Checked Then
con.Execute ("insert into att(date1,time1,status) values(' " & Label2.Caption & " ',' " & Label3.Caption & " ','Present')")
MsgBox "Successfully Marked Your Present.", vbInformation
con.Close
Check1.Enabled = False
Command1.Enabled = False
ElseIf Check1.Value = Unchecked Then
Adodc1.CommandType = adCmdText
Adodc1.RecordSource = "select count(*) from att where date1 = ' " & Format(Now, "dd-mm-yyyy") & " '"
Adodc1.Refresh
If Adodc1.Recordset(0) > 0 Then
MsgBox "You Already Marked Today's Attendance.", vbInformation
Check1.Enabled = False
Command1.Enabled = False
Else: con.Execute ("insert into att(date1,time1,status) values(' " & Label2.Caption & " ',' " & Label3.Caption & " ','Absent')")
MsgBox "Successfully Marked Your Absent.", vbInformation
con.Close
Check1.Enabled = False
Command1.Enabled = False
End If
End If
End Sub

Private Sub Command2_Click()
DataReport1.Show
End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub Command4_Click()
Adodc1.CommandType = adCmdText
Adodc1.RecordSource = "select count(*) from att"
Adodc1.Refresh
MsgBox "Total Number of Records  = " & Val(Adodc1.Recordset(0)), vbInformation

End Sub

Private Sub Command5_Click()
con.ConnectionString = "Provider=Microsoft.Jet.Oledb.4.0;Data Source=" & App.Path & "\adodb.mdb"
con.Open
rst1.Open "select count(*) from att", con, adOpenDynamic, adLockOptimistic, adCmdText
rst2.Open "select count(*) from att where status = 'Present'", con, adOpenDynamic, adLockOptimistic, adCmdText
MsgBox "Your Attendance is : " & (Val(rst2(0)) / Val(rst1(0))) * 100 & "%", vbInformation
If (Val(rst2(0)) / Val(rst1(0))) * 100 < 60 Then
MsgBox "You Have To Solve Question Papers of Previous 5 Years", vbInformation
Else: MsgBox "You Don't Have To Solve Any Question Paper", vbInformation
End If
rst1.Close
rst2.Close
con.Close
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Format(Now, "dddd")
Label2.Caption = Format(Now, "dd-mm-yyyy")
Label3.Caption = Format(Now, "hh:mm:ss am/pm")
End Sub

