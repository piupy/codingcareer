VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form3"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Delete Bus"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   8520
      TabIndex        =   9
      Top             =   720
      Width           =   1695
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   4440
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   600
      Width           =   1815
   End
   Begin VB.TextBox Text4 
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
      Height          =   735
      Left            =   4200
      TabIndex        =   3
      Top             =   5040
      Width           =   3975
   End
   Begin VB.TextBox Text3 
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
      Height          =   735
      Left            =   4200
      TabIndex        =   2
      Top             =   4320
      Width           =   3975
   End
   Begin VB.TextBox Text2 
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
      Height          =   735
      Left            =   4200
      TabIndex        =   1
      Top             =   2640
      Width           =   3975
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
      Height          =   735
      Left            =   4200
      TabIndex        =   0
      Top             =   1920
      Width           =   3975
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Destination Time"
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
      Left            =   1560
      TabIndex        =   7
      Top             =   5160
      Width           =   2535
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Departure Time"
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
      Left            =   1560
      TabIndex        =   6
      Top             =   4440
      Width           =   2535
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "To"
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
      Left            =   3000
      TabIndex        =   5
      Top             =   2760
      Width           =   1095
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "From"
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
      Left            =   3000
      TabIndex        =   4
      Top             =   2040
      Width           =   1095
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
con.Open
rst2.Open "select * from bus where bid= " & Combo1.Text & " ", con, adOpenDynamic, adLockOptimistic, adCmdText
Set Text1.DataSource = rst2
Text1.DataField = "bfrom"
Set Text2.DataSource = rst2
Text2.DataField = "bto"
Set Text3.DataSource = rst2
Text3.DataField = "bdep"
Set Text4.DataSource = rst2
Text4.DataField = "bdes"
con.Close
End Sub

Private Sub Command1_Click()
con.Open
If Combo1.Text = Clear Then
MsgBox "Please Select A Bus To Delete.", vbInformation
ElseIf MsgBox("Are You Sure You Want To Delete The Bus ?", vbQuestion + vbYesNo) = vbYes Then
con.Execute ("delete from bus where bid = " & Combo1.Text & " ")
MsgBox "Record Successfully Deleted", vbInformation
End If
con.Close
End Sub

Private Sub Form_Load()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\b.mdb"
con.Open
rst1.Open "select bid from bus order by bid", con, adOpenDynamic, adLockOptimistic, adCmdText
rst1.MoveFirst
While rst1.EOF <> True
Combo1.AddItem rst1(0)
rst1.MoveNext
Wend
rst1.Close
con.Close
End Sub

