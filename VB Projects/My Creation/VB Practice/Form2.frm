VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command10 
      Caption         =   "rst save"
      Height          =   615
      Left            =   8040
      TabIndex        =   19
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CommandButton Command9 
      Caption         =   "rst add"
      Height          =   615
      Left            =   8040
      TabIndex        =   18
      Top             =   1920
      Width           =   1455
   End
   Begin VB.CommandButton Command8 
      Caption         =   "exit"
      Height          =   615
      Left            =   5760
      TabIndex        =   17
      Top             =   3600
      Width           =   1455
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   4080
      TabIndex        =   15
      Top             =   2160
      Width           =   1935
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   4080
      Style           =   2  'Dropdown List
      TabIndex        =   14
      Top             =   2640
      Width           =   1935
   End
   Begin VB.CommandButton Command7 
      Caption         =   "last"
      Height          =   615
      Left            =   5760
      TabIndex        =   13
      Top             =   4200
      Width           =   1455
   End
   Begin VB.CommandButton Command6 
      Caption         =   "next"
      Height          =   615
      Left            =   4320
      TabIndex        =   12
      Top             =   4200
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "previous"
      Height          =   615
      Left            =   2880
      TabIndex        =   11
      Top             =   4200
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "first"
      Height          =   615
      Left            =   1440
      TabIndex        =   10
      Top             =   4200
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "delete"
      Height          =   615
      Left            =   4320
      TabIndex        =   9
      Top             =   3600
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "save"
      Height          =   615
      Left            =   2880
      TabIndex        =   8
      Top             =   3600
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "add"
      Height          =   615
      Left            =   1440
      TabIndex        =   7
      Top             =   3600
      Width           =   1455
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   4080
      TabIndex        =   6
      Top             =   1680
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   4080
      TabIndex        =   5
      Top             =   1200
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   4080
      TabIndex        =   4
      Top             =   720
      Width           =   1935
   End
   Begin VB.Label Label5 
      Caption         =   "EDESIRED"
      Height          =   375
      Left            =   1800
      TabIndex        =   16
      Top             =   2760
      Width           =   2175
   End
   Begin VB.Label Label4 
      Caption         =   "ESAL"
      Height          =   375
      Left            =   1800
      TabIndex        =   3
      Top             =   2280
      Width           =   2175
   End
   Begin VB.Label Label3 
      Caption         =   "ECOMMENT"
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Top             =   1800
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "EDESIG"
      Height          =   375
      Left            =   1800
      TabIndex        =   1
      Top             =   1320
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "ENAME"
      Height          =   375
      Left            =   1800
      TabIndex        =   0
      Top             =   840
      Width           =   2175
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MsgBox "Please Fill All The Fields.", vbInformation
Text1.Enabled = True
Text2.Enabled = True
Text3.Enabled = True
Text4.Enabled = True
rst.AddNew
End Sub

Private Sub Command10_Click()
rst.Update
MsgBox "Record Successfully Added"
End Sub

Private Sub Command2_Click()
con.Execute ("insert into test values(' " & Trim(Text1.Text) & " ',' " & Trim(Text2.Text) & " ',' " & Trim(Text3.Text) & " ',' " & Trim(Text4.Text) & " ',' " & Trim(Combo1.Text) & " ')")
MsgBox "Record Successfully Added"
Text1.Enabled = False
Text2.Enabled = False
Text3.Enabled = False
Text4.Enabled = False

End Sub

Private Sub Command3_Click()
rst.Delete

End Sub

Private Sub Command4_Click()
rst.MoveFirst

End Sub

Private Sub Command5_Click()
rst.MovePrevious

End Sub

Private Sub Command6_Click()
rst.MoveNext

End Sub

Private Sub Command7_Click()
rst.MoveLast

End Sub

Private Sub Command8_Click()
End

End Sub

Private Sub Command9_Click()
MsgBox "Please Fill All The Fields.", vbInformation
rst.AddNew
Text1.Enabled = True
Text2.Enabled = True
Text3.Enabled = True
Text4.Enabled = True
End Sub

Private Sub Form_Load()
Combo1.AddItem "1 Lakh"
Combo1.AddItem "1 Crore"
con.Open "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
rst.Open "select * from test", con, adOpenDynamic, adLockOptimistic, adCmdText


Text1.Enabled = False
Text2.Enabled = False
Text3.Enabled = False
Text4.Enabled = False


End Sub
