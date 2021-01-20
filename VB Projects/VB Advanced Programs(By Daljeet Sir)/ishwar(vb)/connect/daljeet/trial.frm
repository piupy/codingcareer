VERSION 5.00
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
   Begin VB.CommandButton Command9 
      Caption         =   "DELETE"
      Height          =   375
      Left            =   2280
      TabIndex        =   18
      Top             =   6000
      Width           =   1335
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Modify"
      Height          =   495
      Left            =   5040
      TabIndex        =   17
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   3600
      TabIndex        =   16
      Top             =   3240
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


Public Sub DISP()
    Text1.Text = rst!ecode
    Text2.Text = rst!eName
    Text3.Text = rst!esal
    Text4.Text = rst!ephone
    Text5.Text = rst!edoj
End Sub

Private Sub Command1_Click()
    rst.Close
    cn.Close
    End
End Sub


Private Sub Command2_Click()
    rst.MoveFirst
    Call DISP
End Sub

Private Sub Command3_Click()
     If (rst.BOF = True) Then
        MsgBox "begening of file"
        rst.MoveFirst
        Call DISP
   Else
        rst.MovePrevious
        Call DISP
    End If
    
End Sub

Private Sub Command4_Click()
    If (rst.EOF = True) Then
        MsgBox "end of file"
        rst.MoveLast
Call DISP
    Else
        rst.MoveNext
Call DISP
    End If
End Sub

Private Sub Command5_Click()
    rst.MoveLast
    Call DISP
End Sub

Private Sub Command6_Click()
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text4.Text = ""
    Text5.Text = ""
    
    Text1.SetFocus
End Sub

Private Sub Command7_Click()
    If (MsgBox("are u sure , u want to save the record ?", vbYesNo) = vbYes) Then
        rst.AddNew
        rst!ecode = Text1.Text
        rst!eName = Text2.Text
        rst!esal = Text3.Text
        rst!ephone = Text4.Text
        rst!edoj = Text5.Text
        rst.Update
        MsgBox "record saved"
    End If
End Sub

Private Sub Command8_Click()
    rst!ecode = Text1.Text
    rst!eName = Text2.Text
    rst!esal = Text3.Text
    rst!ephone = Text4.Text
    rst!edoj = Text5.Text
    rst.Update

End Sub

Private Sub Command9_Click()
    rst.Delete
    If (rst.EOF = True) Then
    rst.MovePrevious
    End If
    
    
    If (rst.BOF = True) Then
    rst.MoveNext
    End If
    
    Call DISP
    
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
  
    rst.Open "sunny", cn, adOpenDynamic, adLockOptimistic, adCmdTable
    Call DISP
    End Sub













