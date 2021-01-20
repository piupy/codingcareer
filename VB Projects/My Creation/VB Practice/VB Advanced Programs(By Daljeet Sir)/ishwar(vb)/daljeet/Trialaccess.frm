VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6975
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8430
   LinkTopic       =   "Form1"
   ScaleHeight     =   6975
   ScaleWidth      =   8430
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command8 
      Caption         =   "Delete"
      Height          =   495
      Left            =   5040
      TabIndex        =   17
      Top             =   5400
      Width           =   1095
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   375
      Left            =   3120
      TabIndex        =   16
      Top             =   3000
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      _Version        =   393216
      Format          =   24444929
      CurrentDate     =   38278
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Save"
      Height          =   495
      Left            =   3840
      TabIndex        =   15
      Top             =   5400
      Width           =   855
   End
   Begin VB.CommandButton Command6 
      Caption         =   "New"
      Height          =   495
      Left            =   2520
      TabIndex        =   14
      Top             =   5400
      Width           =   975
   End
   Begin VB.CommandButton Command5 
      Caption         =   ">>"
      Height          =   495
      Left            =   5040
      TabIndex        =   13
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton Command4 
      Caption         =   ">"
      Height          =   495
      Left            =   4200
      TabIndex        =   12
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "<"
      Height          =   495
      Left            =   3360
      TabIndex        =   11
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "<<"
      Height          =   495
      Left            =   2520
      TabIndex        =   10
      Top             =   4440
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      Height          =   495
      Left            =   360
      TabIndex        =   9
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   3240
      TabIndex        =   8
      Top             =   2280
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   3240
      TabIndex        =   7
      Top             =   1560
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   3240
      TabIndex        =   6
      Top             =   960
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   3240
      TabIndex        =   5
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label5 
      Caption         =   "Date Of Joining"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   3120
      Width           =   1695
   End
   Begin VB.Label Label4 
      Caption         =   "phone"
      Height          =   495
      Left            =   360
      TabIndex        =   3
      Top             =   2280
      Width           =   1815
   End
   Begin VB.Label Label3 
      Caption         =   "salary"
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   1560
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Employee Name"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Employee Code"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1695
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
    
    Set DTPicker1.DataSource = rst
    DTPicker1.DataField = "edoj"

End Sub

Private Sub Command2_Click()
    rst.MoveFirst
End Sub

Private Sub Command3_Click()
     If (rst.BOF = True) Then
        MsgBox "begening of file"
        rst.MoveFirst
    Else
        rst.MovePrevious
    End If

End Sub

Private Sub Command4_Click()
    If (rst.EOF = True) Then
        MsgBox "end of file"
        rst.MoveLast
    Else
        rst.MoveNext
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
    If (MsgBox("are u sure , u want to delete the record ?", vbYesNo) = vbYes) Then
        rst.Delete
        If rst.EOF Then
            rst.MoveFirst
        End If
        MsgBox "record deleted"
        rst.Update
    End If
    
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
    rst.Open "SELECT * FROM emp", cn, adOpenDynamic, adLockOptimistic, adCmdText
    
    
    Call bind
    
End Sub

