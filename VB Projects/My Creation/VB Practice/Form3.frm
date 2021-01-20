VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   DrawStyle       =   2  'Dot
   LinkTopic       =   "Form3"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
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
      Height          =   855
      Left            =   3120
      TabIndex        =   8
      Top             =   2160
      Width           =   2175
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Delete The Record"
      Height          =   735
      Left            =   3120
      TabIndex        =   7
      Top             =   3000
      Width           =   2175
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Withdraw My Money"
      Height          =   495
      Left            =   6960
      TabIndex        =   6
      Top             =   5400
      Width           =   2175
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Deposit My Money"
      Height          =   495
      Left            =   2520
      TabIndex        =   5
      Top             =   5400
      Width           =   2055
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
      Height          =   495
      Left            =   6960
      TabIndex        =   4
      Top             =   6120
      Width           =   1815
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
      Height          =   495
      Left            =   2640
      TabIndex        =   3
      Top             =   6120
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Withdraw Money"
      Height          =   495
      Left            =   6960
      TabIndex        =   2
      Top             =   6600
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Deposit Money"
      Height          =   495
      Left            =   2640
      TabIndex        =   1
      Top             =   6600
      Width           =   1695
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
      Left            =   4920
      TabIndex        =   0
      Top             =   840
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Total Balance in my Account"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1320
      TabIndex        =   9
      Top             =   960
      Width           =   3495
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Len(Trim(Text2.Text)) > 0 Then
con.Execute ("update bank set balance = balance + ' " & Text2.Text & " '")
MsgBox "Successfully Deposited Money", vbInformation
Text1.Text = rst!balance
Text2.Text = Clear
Else: MsgBox "Please Enter A Number.", vbCritical
End If
End Sub

Private Sub Command2_Click()
If Len(Trim(Text3.Text)) > 0 Then
con.Execute ("update bank set balance = balance - ' " & Text3.Text & " '")
MsgBox "Successfully Withdrawn Money", vbInformation
Text1.Text = rst!balance
Text3.Text = Clear
Else: MsgBox "Please Enter A Number.", vbCritical
End If
End Sub

Private Sub Command3_Click()
con.Execute ("delete from bank where balance= ' " & Text4.Text & " '")
MsgBox "Record Successfully Deleted.", vbInformation
End Sub

Private Sub Form_Load()
con.Open "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
rst.Open "select * from bank", con, adLockOptimistic, adOpenDynamic, adCmdText
Set Text1.DataSource = rst
Text1.DataField = "balance"
Command1.Enabled = False
Command2.Enabled = False
Text2.Enabled = False
Text3.Enabled = False
End Sub

Private Sub Option1_Click()
Command1.Enabled = True
Command2.Enabled = False
Text2.Enabled = True
Text3.Enabled = False
End Sub

Private Sub Option2_Click()
Command1.Enabled = False
Command2.Enabled = True
Text2.Enabled = False
Text3.Enabled = True
End Sub
