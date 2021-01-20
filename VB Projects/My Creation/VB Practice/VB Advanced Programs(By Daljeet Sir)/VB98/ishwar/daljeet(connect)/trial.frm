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
   Begin VB.TextBox Text1 
      DataField       =   "ROLLNO"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   4680
      TabIndex        =   10
      Top             =   720
      Width           =   2295
   End
   Begin VB.TextBox Text2 
      DataField       =   "NAME"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   4680
      TabIndex        =   9
      Top             =   1440
      Width           =   2295
   End
   Begin VB.TextBox Text3 
      DataField       =   "MARKS"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   4680
      TabIndex        =   8
      Top             =   2280
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "first"
      Height          =   495
      Left            =   1080
      TabIndex        =   7
      Top             =   4680
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "previous"
      Height          =   495
      Left            =   2160
      TabIndex        =   6
      Top             =   4680
      Width           =   975
   End
   Begin VB.CommandButton Command3 
      Caption         =   "next"
      Height          =   495
      Left            =   3360
      TabIndex        =   5
      Top             =   4680
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      Caption         =   "last"
      Height          =   495
      Left            =   4800
      TabIndex        =   4
      Top             =   4680
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "new"
      Height          =   495
      Left            =   840
      TabIndex        =   3
      Top             =   5400
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "save"
      Height          =   495
      Left            =   2160
      TabIndex        =   2
      Top             =   5400
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "delete"
      Height          =   495
      Left            =   3480
      TabIndex        =   1
      Top             =   5400
      Width           =   1215
   End
   Begin VB.CommandButton Command8 
      Caption         =   "exit"
      Height          =   495
      Left            =   4800
      TabIndex        =   0
      Top             =   5400
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "roll number"
      Height          =   375
      Left            =   600
      TabIndex        =   13
      Top             =   600
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "name"
      Height          =   495
      Left            =   480
      TabIndex        =   12
      Top             =   1440
      Width           =   2655
   End
   Begin VB.Label Label3 
      Caption         =   "marks"
      Height          =   375
      Left            =   600
      TabIndex        =   11
      Top             =   2400
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public cn As New ADODB.Connection
Public rst As New ADODB.Recordset



Private Sub Command8_Click()
    rst.Close
    cn.Close
    End
End Sub


Private Sub Command1_Click()
    rst.MoveFirst
End Sub



Private Sub Command4_Click()
    rst.MoveLast
End Sub


Private Sub Form_Load()
    cn.ConnectionString = "provider=MSDAORA;user id=scott; password=tiger;"
    cn.CursorLocation = adUseClient

    cn.Open

    If cn.State = adStateOpen Then
    
        MsgBox "the connection is now open'"
    Else
        MsgBox "sorry! the connection could not be opened"
    End
    End If
  
    rst.Open "student", cn, adOpenDynamic, adLockOptimistic, adCmdTable
    Set Text1.DataSource = rst
    Text1.DataField = "rollno"
    Set Text2.DataSource = rst
    Text2.DataField = "name"
    Set Text3.DataSource = rst
    Text3.DataField = "marks"
    
End Sub


Private Sub Command3_Click()
    rst.MoveNext
     If (rst.EOF = True) Then
        rst.MoveLast
    End If

End Sub




Private Sub Command2_Click()
    rst.MovePrevious
     If (rst.BOF = True) Then
        rst.MoveFirst
    End If
    
End Sub


Private Sub Command5_Click()
    rst.AddNew
End Sub

Private Sub Command6_Click()
    rst.Update
    MsgBox "record saved"
End Sub



Private Sub Command7_Click()
    rst.Delete
    rst.MoveNext
     If (rst.EOF = True) Then
        rst.MoveLast
    End If


    
End Sub
















