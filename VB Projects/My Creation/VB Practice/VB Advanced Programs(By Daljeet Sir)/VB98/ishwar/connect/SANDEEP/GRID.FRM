VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin MSComCtl2.DTPicker DTPicker2 
      Height          =   375
      Left            =   3000
      TabIndex        =   17
      Top             =   3000
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   661
      _Version        =   393216
      Format          =   24510465
      CurrentDate     =   38278
   End
   Begin VB.CommandButton Command4 
      Caption         =   "SEARCH"
      Height          =   375
      Left            =   6000
      TabIndex        =   12
      Top             =   2760
      Width           =   1215
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   375
      Left            =   3000
      TabIndex        =   11
      Top             =   2520
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   661
      _Version        =   393216
      Format          =   24510465
      CurrentDate     =   38278
   End
   Begin VB.CommandButton Command3 
      Caption         =   "SEARCH"
      Height          =   375
      Left            =   6000
      TabIndex        =   9
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   615
      Left            =   240
      TabIndex        =   8
      Top             =   4200
      Width           =   1095
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   3000
      TabIndex        =   7
      Top             =   1680
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   3000
      TabIndex        =   5
      Top             =   1200
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SEARCH"
      Height          =   375
      Left            =   6000
      TabIndex        =   3
      Top             =   240
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   3000
      TabIndex        =   2
      Top             =   240
      Width           =   1815
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid MSHFlexGrid1 
      Height          =   2055
      Left            =   120
      TabIndex        =   0
      Top             =   4920
      Width           =   7935
      _ExtentX        =   13996
      _ExtentY        =   3625
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
   Begin VB.Label Label8 
      Caption         =   "Enter End Date"
      Height          =   255
      Left            =   120
      TabIndex        =   16
      Top             =   3120
      Width           =   2175
   End
   Begin VB.Label Label7 
      Caption         =   ">>>>>>>>>>"
      Height          =   375
      Left            =   4920
      TabIndex        =   15
      Top             =   2760
      Width           =   975
   End
   Begin VB.Label Label6 
      Caption         =   ">>>>>>>>>"
      Height          =   375
      Left            =   4920
      TabIndex        =   14
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   ">>>>>>>>"
      Height          =   375
      Left            =   5160
      TabIndex        =   13
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "Enter Start Date"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   2640
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "Enter End Date"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Start Date"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1320
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "ENTER EMPLOYEE NAME"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Width           =   2175
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim strsql As String
Dim da As String, da1 As String
Dim mo As String
Dim ye As String, dtstr As String, dtstr1 As String


Private Sub Command1_Click()
    strsql = "SELECT * FROM trial WHERE ENAME = '" & Text1.Text & "'"
    rst.Open strsql, cn, adOpenDynamic, adLockOptimistic, adCmdText
    Set MSHFlexGrid1.DataSource = rst
    'Set MSFlexGrid1.DataSource = rst
    'Set DataGrid1.DataSource = rst
    rst.Close
        
End Sub

Private Sub Command2_Click()
    cn.Close
    End
End Sub

Private Sub Command3_Click()
    strsql = "select * from trial where edoj >= '" & Text2.Text & "'" & " and edoj <= '" & Text3.Text & "'"
    rst.Open strsql, cn, adOpenDynamic, adLockOptimistic, adCmdText
    Set MSHFlexGrid1.DataSource = rst
    'Set MSFlexGrid1.DataSource = rst
    'Set DataGrid1.DataSource = rst
    rst.Close
    
End Sub

Private Sub Command4_Click()
    mo = MonthName(month(DTPicker1.Value))
    da = WeekdayName(Weekday(DTPicker1.Value))
    da1 = day(DTPicker1.Value)
    ye = year(DTPicker1.Value)
    dtstr = da1 & " - " & mo & " - " & ye
    
    mo = MonthName(month(DTPicker2.Value))
    da = WeekdayName(Weekday(DTPicker2.Value))
    da1 = day(DTPicker2.Value)
    ye = year(DTPicker2.Value)
    dtstr1 = da1 & " - " & mo & " - " & ye
    
    strsql = "select * from trial where edoj >= '" & dtstr & "'" & " and edoj <= '" & dtstr1 & "'"
    rst.Open strsql, cn, adOpenDynamic, adLockOptimistic, adCmdText
    Set MSHFlexGrid1.DataSource = rst
    'Set MSFlexGrid1.DataSource = rst
    'Set DataGrid1.DataSource = rst
    rst.Close
    
End Sub




Private Sub Form_Load()
    cn.ConnectionString = "provider=MSDAORA;user id=scott; password=tiger;"
    cn.Open
    If cn.State = adStateOpen Then
        MsgBox "the connection is now open'"
    Else
        MsgBox "sorry! the connection could not be open"
        End
    End If
    'rst.Open "SELECT * FROM TRIAL", cn, adOpenDynamic, adLockOptimistic, adCmdText
    'Set MSHFlexGrid1.DataSource = rst
End Sub
