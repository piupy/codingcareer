VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   4440
      TabIndex        =   16
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CommandButton EXIT 
      Caption         =   "EXIT"
      Height          =   495
      Left            =   2280
      TabIndex        =   15
      Top             =   5520
      Width           =   2415
   End
   Begin VB.CommandButton MOVELAST 
      Caption         =   "MOVELAST"
      Height          =   495
      Left            =   4800
      TabIndex        =   14
      Top             =   4680
      Width           =   1455
   End
   Begin VB.CommandButton FIND 
      Caption         =   "FIND"
      Height          =   495
      Left            =   2640
      TabIndex        =   13
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CommandButton MOVENEXT 
      Caption         =   "MOVENEXT"
      Height          =   495
      Left            =   720
      TabIndex        =   12
      Top             =   4680
      Width           =   1455
   End
   Begin VB.CommandButton MOVEFIRST 
      Caption         =   "MOVEFIRST"
      Height          =   495
      Left            =   3480
      TabIndex        =   11
      Top             =   4680
      Width           =   1335
   End
   Begin VB.CommandButton MOVEPREV 
      Caption         =   "MOVEPREV"
      Height          =   495
      Left            =   2160
      TabIndex        =   10
      Top             =   4680
      Width           =   1335
   End
   Begin VB.CommandButton MODIFY 
      Caption         =   "MODIFY"
      Height          =   495
      Left            =   720
      TabIndex        =   9
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CommandButton DELETE 
      Caption         =   "DELETE"
      Height          =   495
      Left            =   4440
      TabIndex        =   8
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton NEW 
      Caption         =   "NEW"
      Height          =   495
      Left            =   2640
      TabIndex        =   7
      Top             =   3000
      Width           =   1335
   End
   Begin VB.CommandButton UPDATE 
      Caption         =   "UPDATE"
      Height          =   495
      Left            =   720
      TabIndex        =   6
      Top             =   3000
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   3360
      TabIndex        =   5
      Top             =   1920
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   3360
      TabIndex        =   4
      Top             =   1080
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   3360
      TabIndex        =   3
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "ADDRESS"
      Height          =   375
      Left            =   720
      TabIndex        =   2
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "ROLLNUMBER"
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "NAME"
      Height          =   375
      Left            =   720
      TabIndex        =   0
      Top             =   480
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CN As Connection
Dim RS As Recordset, RS1 As Recordset
Dim COM As Command



Private Sub UPDATE_Click()
    If Not RS.EOF Then
        RS.AddNew
        RS!Name = Text1.Text
        RS.Fields("ROLLNO") = Val(Text2.Text)
        RS.Fields("ADDRESS") = Text3.Text
        RS.UPDATE
        End If
        MsgBox "UPDATED"
End Sub

Private Sub DELETE_Click()
    RS.DELETE
    RS.MOVENEXT
    If RS.EOF Then
        RS.MOVELAST
    End If
    DISP
End Sub

Private Sub EXIT_Click()
    RS.Close
    CN.Close
    Unload Me
End Sub

Private Sub FIND_Click()
    Dim SQL As String
    SQL = "SELECT * FROM STU WHERE NAME = '" + Text4.Text + "'"
    Set RS1 = New ADODB.Recordset
    RS1.Open SQL, CN, adOpenDynamic, adLockOptimistic
    RS1.MOVEFIRST
    Text1.Text = RS1.Fields("NAME")
    Text2.Text = RS1!ROLLNO
    Text3.Text = RS!ADDRESS
End Sub

Private Sub Form_Load()
    Set CN = New Connection
    Set COM = New Command
    Set RS = New Recordset
    Set RS1 = New Recordset
    With CN
        .ConnectionString = "USER ID=; PASSWORD=;DATA SOURCE=D:\ISHWAR\STUDENT.MDB"
        .Provider = "MICROSOFT.JET.OLEDB.4.0"
        .Open
    End With
    RS.Open "SELECT * FROM STU", CN, adOpenDynamic, adLockOptimistic
    DISP
End Sub

Private Sub MODIFY_Click()
    RS.Fields("NAME") = Text1.Text
    RS!ROLLNO = Val(Text2.Text)
    RS!ADDRESS = Text3.Text
    RS.UPDATE
End Sub

Private Sub MOVEFIRST_Click()
    RS.MOVEFIRST
    Call DISP
End Sub

Private Sub MOVELAST_Click()
    RS.MOVELAST
    Call DISP
End Sub

Private Sub MOVENEXT_Click()
    RS.MOVENEXT
    If RS.EOF Then
        RS.MOVELAST
    End If
    DISP
End Sub

Private Sub MOVEPREV_Click()
    RS.MovePrevious
    If RS.BOF Then
        RS.MOVEFIRST
    End If
    DISP
End Sub



Public Sub DISP()
    Text1.Text = RS.Fields("NAME")
    Text2.Text = RS("ROLLNO")
    Text3.Text = RS!ADDRESS
End Sub

Private Sub NEW_Click()
Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Text1.SetFocus
End Sub
