VERSION 5.00
Begin VB.Form Form7 
   Caption         =   "Form6"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form6"
   ScaleHeight     =   8430
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command5 
      Caption         =   "Change My Security Question"
      Height          =   735
      Left            =   10920
      TabIndex        =   14
      Top             =   5400
      Width           =   2535
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   10920
      TabIndex        =   13
      Top             =   4680
      Width           =   2535
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Forgot Password"
      Height          =   735
      Left            =   2400
      TabIndex        =   12
      Top             =   6480
      Width           =   2535
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7440
      TabIndex        =   10
      Top             =   4680
      Width           =   2535
   End
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   9360
      TabIndex        =   9
      Top             =   2160
      Width           =   2775
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Save Security Question"
      Height          =   735
      Left            =   7440
      TabIndex        =   8
      Top             =   5400
      Width           =   2535
   End
   Begin VB.ComboBox Combo2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   6480
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   3480
      Width           =   6615
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   6480
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   1200
      Width           =   2055
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save Password"
      Height          =   615
      Left            =   2880
      TabIndex        =   5
      Top             =   4560
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Change Password"
      Height          =   615
      Left            =   960
      TabIndex        =   4
      Top             =   4560
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3480
      TabIndex        =   1
      Top             =   2520
      Width           =   2775
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3480
      TabIndex        =   0
      Top             =   1200
      Width           =   2775
   End
   Begin VB.Label Label3 
      Caption         =   "Password Here :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7080
      TabIndex        =   11
      Top             =   2280
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "New Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   2640
      Width           =   2775
   End
   Begin VB.Label Label1 
      Caption         =   "Current Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   1320
      Width           =   2775
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Combo1_Click()
con.Open
rst2.Open "select * from forgot where pass='" & Combo1.Text & "'", con, adOpenDynamic, adLockOptimistic, adCmdText
Text1.Text = rst2(0)
rst2.Close
con.Close
End Sub



Private Sub Command1_Click()
Text1.Text = Clear
Text1.SetFocus

End Sub

Private Sub Command2_Click()
con.Open
rst3.Open "select count(*) from forgot where pass='" & Text1.Text & "'", con, adOpenDynamic, adLockOptimistic, adCmdText
If rst3(0) > 0 Then
con.Execute ("update forgot set pass = '" & Text2.Text & "' where pass='" & Text1.Text & "'")
MsgBox "Password Saved", vbInformation
Text1.Text = Clear
Text2.Text = Clear


Combo1.Clear
rst2.Open "select * from forgot", con, adOpenDynamic, adLockOptimistic, adCmdText
rst2.MoveFirst
While rst2.EOF <> True
Combo1.AddItem rst2(0)
rst2.MoveNext
Wend
rst2.Close
con.Close
Else: MsgBox "No Record With This Password Found", vbInformation
con.Close
End If

End Sub

Private Sub Command3_Click()
If Len(Trim(Text3.Text)) > 0 And Len(Trim(Combo2.Text)) > 0 Then
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
con.Open
con.Execute "insert into q1 values('" & Text3.Text & "','" & Combo2.Text & "','" & Text4.Text & "')"
con.Close
MsgBox "Security Question Successfully Saved", vbInformation
Text3.Text = Clear
Else: MsgBox "You Can't leave Anything Blank", vbInformation
End If
End Sub

Private Sub Command4_Click()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
con.Open
rst.Open "select pass from q1 where sec = '" & Combo2.Text & "' and ans = '" & Text4.Text & "'", con, adOpenDynamic, adLockOptimistic, adCmdText
If rst(0) > 0 Then
MsgBox "Your Password is : " & rst(0), vbInformation
Text4.Text = Clear
rst.Close
con.Close
Else: MsgBox "Security Answer is Wrong", vbInformation
rst.Close
con.Close
End If
End Sub

Private Sub Command5_Click()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
con.Open
con.Execute "update q1 set ans='" & Text5.Text & "' where pass='" & Text3.Text & "' and sec='" & Combo2.Text & "'"
MsgBox "Security Answer Saved Successfully", vbInformation
con.Close
End Sub

Private Sub Form_Load()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
con.Open
rst2.Open "select * from forgot", con, adOpenDynamic, adLockOptimistic, adCmdText
rst2.MoveFirst
While rst2.EOF <> True
Combo1.AddItem rst2(0)
rst2.MoveNext
Wend
rst2.Close
rst2.Open "select * from q", con, adOpenDynamic, adLockOptimistic, adCmdText
rst2.MoveFirst
While rst2.EOF <> True
Combo2.AddItem rst2(0)
rst2.MoveNext
Wend
rst2.Close

con.Close
End Sub

