VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form4"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command9 
      Caption         =   "Hide Controls"
      Height          =   615
      Left            =   8640
      TabIndex        =   14
      Top             =   2640
      Width           =   1815
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Show Controls"
      Height          =   615
      Left            =   8640
      TabIndex        =   13
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFC0C0&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1695
      Left            =   960
      TabIndex        =   6
      Top             =   4080
      Width           =   9495
      Begin VB.CommandButton Command10 
         Caption         =   "My Form"
         Height          =   495
         Left            =   7440
         TabIndex        =   16
         Top             =   720
         Width           =   1575
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Add"
         Height          =   495
         Left            =   600
         TabIndex        =   15
         Top             =   840
         Width           =   1455
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Delete"
         Height          =   495
         Left            =   3600
         TabIndex        =   12
         Top             =   840
         Width           =   1455
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Save"
         Height          =   495
         Left            =   2040
         TabIndex        =   11
         Top             =   840
         Width           =   1575
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Last"
         Height          =   495
         Left            =   5040
         TabIndex        =   10
         Top             =   360
         Width           =   1455
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Next"
         Height          =   495
         Left            =   3600
         TabIndex        =   9
         Top             =   360
         Width           =   1455
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Previous"
         Height          =   495
         Left            =   2040
         TabIndex        =   8
         Top             =   360
         Width           =   1575
      End
      Begin VB.CommandButton Command1 
         Caption         =   "First"
         Height          =   495
         Left            =   600
         TabIndex        =   7
         Top             =   360
         Width           =   1455
      End
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
      Height          =   615
      Left            =   5040
      TabIndex        =   2
      Top             =   2880
      Width           =   2415
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
      Height          =   615
      Left            =   5040
      TabIndex        =   1
      Top             =   1920
      Width           =   2415
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
      Height          =   615
      Left            =   5040
      TabIndex        =   0
      Top             =   960
      Width           =   2415
   End
   Begin VB.Label Label3 
      Caption         =   "Fee"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2760
      TabIndex        =   5
      Top             =   2880
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "Course"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2760
      TabIndex        =   4
      Top             =   1920
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2760
      TabIndex        =   3
      Top             =   960
      Width           =   2175
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
rst.MoveFirst
End Sub

Private Sub Command10_Click()
Form5.Show

End Sub

Private Sub Command2_Click()
If rst.BOF = True Then
MsgBox "Beginning of File", vbInformation
rst.MoveFirst
Else: rst.MovePrevious
End If
End Sub

Private Sub Command3_Click()
If rst.EOF = True Then
MsgBox "End of File", vbInformation
rst.MoveLast
Else: rst.MoveNext
End If
End Sub

Private Sub Command4_Click()
rst.MoveLast
End Sub

Private Sub Command5_Click()
rst.AddNew
End Sub

Private Sub Command6_Click()
rst.Update
MsgBox "Record Saved", vbInformation
End Sub

Private Sub Command7_Click()
rst.Delete
MsgBox "Record Deleted", vbInformation
rst.MovePrevious

End Sub

Private Sub Command8_Click()
Frame1.Visible = True

End Sub

Private Sub Command9_Click()
Frame1.Visible = False
End Sub

Private Sub Form_Load()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
con.Open
rst.Open "st", con, adOpenDynamic, adLockOptimistic, adCmdTable
Set Text1.DataSource = rst
Text1.DataField = "st_name"
Set Text2.DataSource = rst
Text2.DataField = "st_course"
Set Text3.DataSource = rst
Text3.DataField = "st_fee"
Frame1.Visible = False
End Sub

