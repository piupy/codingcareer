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
   Begin VB.CommandButton FINDNEXT 
      Caption         =   "FIND NEXT"
      Height          =   495
      Left            =   840
      TabIndex        =   16
      Top             =   5520
      Width           =   1335
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   2640
      TabIndex        =   15
      Top             =   4800
      Width           =   1575
   End
   Begin VB.CommandButton FIND 
      Caption         =   "FIND"
      Height          =   495
      Left            =   840
      TabIndex        =   14
      Top             =   4800
      Width           =   1335
   End
   Begin VB.CommandButton PREV 
      Caption         =   "<<"
      Height          =   495
      Left            =   5040
      TabIndex        =   13
      Top             =   4080
      Width           =   1215
   End
   Begin VB.CommandButton NEXT 
      Caption         =   ">>"
      Height          =   495
      Left            =   3720
      TabIndex        =   12
      Top             =   4080
      Width           =   1335
   End
   Begin VB.CommandButton LAST 
      Caption         =   "LAST RECORD"
      Height          =   495
      Left            =   2280
      TabIndex        =   11
      Top             =   4080
      Width           =   1455
   End
   Begin VB.CommandButton FIRST 
      Caption         =   "FIRST RECORD"
      Height          =   495
      Left            =   840
      TabIndex        =   10
      Top             =   4080
      Width           =   1455
   End
   Begin VB.CommandButton DELETE 
      Caption         =   "DELETE"
      Height          =   495
      Left            =   6120
      TabIndex        =   9
      Top             =   2760
      Width           =   975
   End
   Begin VB.CommandButton UPDATE 
      Caption         =   "UPDATE"
      Height          =   615
      Left            =   6120
      TabIndex        =   8
      Top             =   1920
      Width           =   975
   End
   Begin VB.CommandButton ADD 
      Caption         =   "ADD"
      Height          =   615
      Left            =   6120
      TabIndex        =   7
      Top             =   1080
      Width           =   975
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   3720
      TabIndex        =   6
      Top             =   2760
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   3720
      TabIndex        =   5
      Top             =   2040
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3720
      TabIndex        =   4
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Label Label4 
      Caption         =   "ADDRESS"
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   2760
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "ROLL NUMBER"
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   2040
      Width           =   2175
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "DAO EXAMPLE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1800
      TabIndex        =   1
      Top             =   120
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "NAME"
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Top             =   1200
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Database
Dim RS As Recordset
Private Sub ADD_Click()
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    RS.AddNew
End Sub

Private Sub Command8_Click()

End Sub



Private Sub DELETE_Click()
    RS.DELETE
    RS.MoveNext
    If RS.EOF Then
        RS.MoveLast
    End If
    MOVEFIELD
End Sub

Private Sub FIND_Click()
    Dim A As String
    RS.FindFirst "[ROLLNO]=" & CInt(Text4.Text)
    If RS.NoMatch Then
        MsgBox " RECORD NOT FOUND....."
    Else
        RS.Edit
        Text1.Text = RS(0)
        Text2.Text = RS(1)
        Text3.Text = RS(2)
    End If
End Sub


Private Sub FINDNEXT_Click()
    Dim A As String
    RS.FindFirst "[ROLLNO]=" & CInt(Text4.Text)
    If RS.NoMatch Then
        MsgBox " RECORD NOT FOUND....."
    Else
        RS.Edit
        Text1.Text = RS(0)
        Text2.Text = RS(1)
        Text3.Text = RS(2)
    End If
End Sub

Private Sub FIRST_Click()
    RS.MoveFirst
    MOVEFIELD
End Sub

Private Sub Form_Load()
    Set DB = OpenDatabase("D:\ISHWAR\STUDENT.MDB")
    Set RS = DB.OpenRecordset("SELECT * FROM STU")
    Text1.Text = RS.Fields("NAME")
    Text2.Text = RS.Fields("ROLLNO")
    Text3.Text = RS.Fields("ADDRESS")
End Sub

Private Sub LAST_Click()
    RS.MoveLast
    MOVEFIELD
End Sub

Private Sub NEXT_Click()
    RS.MoveNext
    If RS.EOF Then
        RS.MoveLast
    End If
    MOVEFIELD
End Sub

Private Sub PREV_Click()
    RS.MovePrevious
    If RS.BOF Then
        RS.MoveFirst
    End If
    MOVEFIELD
End Sub

Public Sub MOVEFIELD()
    Text1.Text = RS("NAME")
    Text2 = RS("ROLLNO")
    Text3.Text = RS("ADDRESS")
End Sub




Private Sub UPDATE_Click()
    If RS.EditMode = dbEditAdd Then
        RS("NAME") = Text1.Text
        RS("ROLLNO") = Text2.Text
        RS("ADDRESS") = Text3.Text
    End If
    RS.UPDATE
End Sub
