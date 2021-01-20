VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   7050
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8700
   LinkTopic       =   "Form2"
   ScaleHeight     =   7050
   ScaleWidth      =   8700
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command6 
      Caption         =   "open"
      Height          =   615
      Left            =   2280
      TabIndex        =   19
      Top             =   4560
      Width           =   1815
   End
   Begin VB.CommandButton Command5 
      Caption         =   "delete"
      Height          =   615
      Left            =   5040
      TabIndex        =   18
      Top             =   4560
      Width           =   1815
   End
   Begin MSComCtl2.DTPicker DTPicker2 
      Height          =   375
      Left            =   2880
      TabIndex        =   17
      Top             =   3600
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      _Version        =   393216
      Format          =   24444929
      CurrentDate     =   38278
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Search"
      Height          =   375
      Left            =   5880
      TabIndex        =   14
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Search"
      Height          =   375
      Left            =   5880
      TabIndex        =   13
      Top             =   1440
      Width           =   1215
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   375
      Left            =   2880
      TabIndex        =   9
      Top             =   3000
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      _Version        =   393216
      Format          =   24444929
      CurrentDate     =   38278
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid MSHFlexGrid1 
      Height          =   2415
      Left            =   360
      TabIndex        =   8
      Top             =   5640
      Width           =   7935
      _ExtentX        =   13996
      _ExtentY        =   4260
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   735
      Left            =   360
      TabIndex        =   6
      Top             =   4800
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Search"
      Height          =   375
      Left            =   5880
      TabIndex        =   5
      Top             =   360
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   3000
      TabIndex        =   4
      Top             =   1800
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   3000
      TabIndex        =   3
      Top             =   1320
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   3000
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label8 
      Caption         =   "Enter End Date"
      Height          =   255
      Left            =   240
      TabIndex        =   16
      Top             =   3600
      Width           =   2055
   End
   Begin VB.Label Label7 
      Caption         =   ">>>>>>>>>>>>"
      Height          =   255
      Left            =   4680
      TabIndex        =   15
      Top             =   3480
      Width           =   1095
   End
   Begin VB.Label Label6 
      Caption         =   ">>>>>>>>>>>"
      Height          =   375
      Left            =   4680
      TabIndex        =   12
      Top             =   1560
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   ">>>>>>>>"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4800
      TabIndex        =   11
      Top             =   360
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "Enter start Date"
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   2880
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Employee Name"
      Height          =   375
      Left            =   360
      TabIndex        =   7
      Top             =   360
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "Enter End Date"
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   1680
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Start Date"
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   1320
      Width           =   1815
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
    Dim strsql As String
    Dim dt As Date
Private Sub Command1_Click()
    strsql = "SELECT * FROM emp WHERE ENAME = '" & Text1.Text & "'"
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
    strsql = "select * from emp where edoj >= #" & Text2.Text & "#" & " and edoj <= #" & Text3.Text & "#"
    rst.Open strsql, cn, adOpenDynamic, adLockOptimistic, adCmdText
    Set MSHFlexGrid1.DataSource = rst
    'Set MSFlexGrid1.DataSource = rst
    'Set DataGrid1.DataSource = rst
    rst.Close
        
End Sub

Private Sub Command4_Click()
    strsql = "select * from emp where edoj >= #" & DTPicker1.Value & "#" & " and edoj <= #" & DTPicker2.Value & "#"
    rst.Open strsql, cn, adOpenDynamic, adLockOptimistic, adCmdText
    Set MSHFlexGrid1.DataSource = rst
    'Set MSFlexGrid1.DataSource = rst
    'Set DataGrid1.DataSource = rst
    rst.Close
    
End Sub

Private Sub Command5_Click()
    


    If (MsgBox("are u sure , u want to delete the record ?", vbYesNo) = vbYes) Then
If rst.EOF Then
    rst.MoveFirst
    End If
        rst.Move (MSHFlexGrid1.RowSel - 1)
       ' MSHFlexGrid1.RemoveItem = MSHFlexGrid1.RowSel
        
        
        rst.Delete
        
        rst.MoveFirst
'        If rst.EOF Then
 '           rst.MoveFirst
  '      End If
        MsgBox "record deleted"
        rst.Update
      Set MSHFlexGrid1.DataSource = rst
        
       
    End If

End Sub

Private Sub Command6_Click()
    strsql = "select * from emp"
    rst.Open strsql, cn, adOpenDynamic, adLockOptimistic, adCmdText
    
    Set MSHFlexGrid1.DataSource = rst
       
End Sub

Private Sub Form_Load()
    
    cn.ConnectionString = "provider=Microsoft.jet.oledb.4.0;user id=; password=;Data Source = D:\Ishwar\Daljeet\dbaccess.mdb"
    cn.Open

    If cn.State = adStateOpen Then
        MsgBox "the connection is now open'"
    Else
        MsgBox "sorry! the connection could not be open"
    End
    End If
    'rst.Open "SELECT * FROM emp", cn, adOpenDynamic, adLockOptimistic, adCmdText
    'Set MSHFlexGrid1.DataSource = rst
End Sub

