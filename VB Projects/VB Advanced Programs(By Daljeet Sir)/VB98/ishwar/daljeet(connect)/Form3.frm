VERSION 5.00
Object = "{0ECD9B60-23AA-11D0-B351-00A0C9055D8E}#6.0#0"; "MSHFLXGD.OCX"
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form3"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox text4 
      Height          =   375
      Left            =   2280
      TabIndex        =   10
      Top             =   4200
      Width           =   1935
   End
   Begin MSHierarchicalFlexGridLib.MSHFlexGrid MSHFlexGrid1 
      Height          =   2895
      Left            =   960
      TabIndex        =   9
      Top             =   840
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   5106
      _Version        =   393216
      _NumberOfBands  =   1
      _Band(0).Cols   =   2
   End
   Begin VB.CommandButton Command9 
      Caption         =   "find"
      Height          =   495
      Left            =   6240
      TabIndex        =   8
      Top             =   4800
      Width           =   1455
   End
   Begin VB.CommandButton Command8 
      Caption         =   "exit"
      Height          =   495
      Left            =   4560
      TabIndex        =   7
      Top             =   5520
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "delete"
      Height          =   495
      Left            =   3240
      TabIndex        =   6
      Top             =   5520
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "save"
      Height          =   495
      Left            =   1920
      TabIndex        =   5
      Top             =   5520
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "new"
      Height          =   495
      Left            =   600
      TabIndex        =   4
      Top             =   5520
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "last"
      Height          =   495
      Left            =   4560
      TabIndex        =   3
      Top             =   4800
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "next"
      Height          =   495
      Left            =   3120
      TabIndex        =   2
      Top             =   4800
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "previous"
      Height          =   495
      Left            =   1920
      TabIndex        =   1
      Top             =   4800
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "first"
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   4800
      Width           =   975
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public cn As New ADODB.Connection
Public rst As New ADODB.Recordset

Private Sub Command9_Click()
    Dim st As String
    st = "SELECT * FROM emp WHERE deptno = " & text4.Text
    rst.Open st, cn, adOpenDynamic, adLockOptimistic, adCmdText
    'rst.MoveFirst
    ' Do While Not rst.EOF
     '   Print rst!empno; rst!ename
        
      '  rst.MoveNext
    'Loop
    Set MSHFlexGrid1.DataSource = rst
    

End Sub


Private Sub Form_Load()
    cn.ConnectionString = "provider=MSDAORA;user id=scott; password=tiger;"
    cn.CursorLocation = adUseClient

    cn.Open

    If cn.State = adStateOpen Then
    
        MsgBox "the connection is now open "
    Else
        MsgBox "sorry! the connection could not be opened"
         End
    End If
    
    
End Sub

Private Sub Label3_Click()
End Sub
