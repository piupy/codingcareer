VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Next"
      Height          =   615
      Left            =   3600
      TabIndex        =   4
      Top             =   3720
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Previous"
      Height          =   615
      Left            =   2040
      TabIndex        =   3
      Top             =   3720
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3120
      TabIndex        =   1
      Top             =   2520
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Insert"
      Height          =   615
      Left            =   5040
      TabIndex        =   2
      Top             =   3720
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3120
      TabIndex        =   0
      Top             =   1560
      Width           =   2775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
con.Execute ("insert into t values(' ATS0'&'" & Text1.Text & " ',' " & Text2.Text & " ')")
MsgBox "Saved", vbInformation
End Sub

Private Sub Command2_Click()
If rst.BOF = True Then
rst.MoveFirst
Else: rst.MovePrevious
End If
End Sub

Private Sub Command3_Click()
rst.MoveNext
End Sub

Private Sub Form_Load()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\d.mdb"
con.Open
rst.Open "select * from t", con, adOpenDynamic, adLockOptimistic, adCmdText
Set Text1.DataSource = rst
Text1.DataField = "eid"
Set Text2.DataSource = rst
Text2.DataField = "ename"

End Sub
