VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   375
      Left            =   3480
      TabIndex        =   19
      Top             =   3840
      Width           =   2175
      _ExtentX        =   3836
      _ExtentY        =   661
      _Version        =   393216
      Format          =   24444929
      CurrentDate     =   37397
   End
   Begin VB.CommandButton Command8 
      Caption         =   "delete"
      Height          =   495
      Left            =   4680
      TabIndex        =   17
      Top             =   5280
      Width           =   975
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   3480
      TabIndex        =   16
      Top             =   3120
      Width           =   2175
   End
   Begin VB.CommandButton Command7 
      Caption         =   "update"
      Height          =   495
      Left            =   3360
      TabIndex        =   15
      Top             =   5280
      Width           =   975
   End
   Begin VB.CommandButton Command6 
      Caption         =   "add"
      Height          =   375
      Left            =   2040
      TabIndex        =   14
      Top             =   5280
      Width           =   855
   End
   Begin VB.CommandButton Command5 
      Caption         =   ">"
      Height          =   495
      Left            =   4560
      TabIndex        =   13
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton Command4 
      Caption         =   ">>"
      Height          =   495
      Left            =   3720
      TabIndex        =   12
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "<<"
      Height          =   495
      Left            =   2880
      TabIndex        =   11
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "<"
      Height          =   495
      Left            =   2040
      TabIndex        =   10
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      Height          =   495
      Left            =   480
      TabIndex        =   9
      Top             =   4440
      Width           =   975
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   3600
      TabIndex        =   8
      Top             =   2400
      Width           =   2175
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   3600
      TabIndex        =   7
      Top             =   1680
      Width           =   2175
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   3600
      TabIndex        =   6
      Top             =   960
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   3600
      TabIndex        =   5
      Top             =   240
      Width           =   2175
   End
   Begin VB.Label Label6 
      Caption         =   "date of birth"
      Height          =   375
      Left            =   360
      TabIndex        =   18
      Top             =   3840
      Width           =   1695
   End
   Begin VB.Label Label5 
      Caption         =   "Date of Joining"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   3240
      Width           =   1815
   End
   Begin VB.Label Label4 
      Caption         =   "Phone"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   2400
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "Salary"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   1560
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Employee name"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Employee code"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
    rst.Close
    cn.Close
    End
End Sub

Private Sub bind()
    Set Text1.DataSource = rst
    Text1.DataField = "ecode"
    
    
    Set Text2.DataSource = rst
    Text2.DataField = "ename"
    
    Set Text3.DataSource = rst
    Text3.DataField = "esal"
    
    Set Text4.DataSource = rst
    Text4.DataField = "ephone"
    
    Set Text5.DataSource = rst
    Text5.DataField = "edoj"
    Set DTPicker1.DataSource = rst
    DTPicker1.DataField = "edob"
    

End Sub

Private Sub Command2_Click()
    rst.MoveFirst
End Sub

Private Sub Command3_Click()
    rst.MovePrevious
     If (rst.BOF = True) Then
        rst.MoveFirst
    End If

   

End Sub




Private Sub Command4_Click()
    rst.MoveNext
    If (rst.EOF = True) Then
        rst.MoveLast
    Else
        
    End If

        
End Sub

Private Sub Command5_Click()
    rst.MoveLast
    
End Sub

Private Sub Command6_Click()
    rst.AddNew
    Text1.SetFocus
End Sub

Private Sub Command7_Click()
    If (MsgBox("are u sure , u want to save the record ?", vbYesNo) = vbYes) Then
        
        rst.Update
        MsgBox "record saved"
    End If
End Sub

Private Sub Command8_Click()
    
    rst.Delete
    rst.MoveNext
    If (rst.EOF = True) Then
    rst.MoveLast
    End If
    
End Sub

Private Sub Form_Load()
    cn.ConnectionString = "provider=MSDAORA;user id=scott; password=tiger;"
    cn.CursorLocation = adUseClient
    cn.Open

    If cn.State = adStateOpen Then
    
        MsgBox "the connection is now open'"
    Else
        MsgBox "sorry! the connection could not be open"
    End
    End If
  
    rst.Open "trial", cn, adOpenDynamic, adLockOptimistic, adCmdTable
    Call bind
End Sub















































