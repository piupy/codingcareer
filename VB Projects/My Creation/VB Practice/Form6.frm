VERSION 5.00
Begin VB.Form Form6 
   Caption         =   "Form6"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form6"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
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
      Height          =   855
      Left            =   4320
      TabIndex        =   4
      Top             =   2520
      Width           =   3255
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Update My Salary"
      Height          =   855
      Left            =   3480
      TabIndex        =   3
      Top             =   4200
      Width           =   2415
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
      Left            =   720
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   1200
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Change Fee and Save"
      Height          =   855
      Left            =   5880
      TabIndex        =   1
      Top             =   4200
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   4320
      TabIndex        =   0
      Top             =   1080
      Width           =   3255
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Combo1_Click()
con.Open

rst.Open "select st_fee from st where st_name = '" & Combo1.Text & "'", con, adOpenDynamic, adLockOptimistic, adCmdText
Set Text1.DataSource = rst
Text1.DataField = "st_fee"
rst.Close



con.Close
End Sub

Private Sub Command1_Click()
If Len(Trim(Text1.Text)) = 0 Then
MsgBox "Please Enter Salary First", vbInformation
Else: con.Open
con.Execute "update st set st_fee = " & Text2.Text & " where st_name='" & Combo1.Text & "'"
con.Close
MsgBox "Salary Updated Successfully", vbInformation
Text1.Text = Clear
End If
End Sub

Private Sub Command2_Click()
Command1.Enabled = True
Text2.Visible = True

End Sub

Private Sub Form_Load()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
con.Open
rst.Open "select st_name from st", con, adOpenDynamic, adLockOptimistic, adCmdText
rst.MoveFirst
While rst.EOF <> True
Combo1.AddItem rst(0)
rst.MoveNext
Wend
rst.Close

con.Close
Command1.Enabled = False
Text2.Visible = False
End Sub
