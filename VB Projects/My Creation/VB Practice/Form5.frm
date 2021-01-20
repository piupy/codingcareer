VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "Form5"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form5"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text6 
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
      Left            =   6600
      TabIndex        =   10
      Top             =   5520
      Width           =   2535
   End
   Begin VB.TextBox Text5 
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
      Left            =   3720
      TabIndex        =   9
      Top             =   5520
      Width           =   2535
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
      Left            =   840
      TabIndex        =   8
      Top             =   5520
      Width           =   2535
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
      Left            =   8160
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   1680
      Width           =   2295
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
      Left            =   4560
      TabIndex        =   2
      Top             =   2520
      Width           =   2535
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
      Left            =   4560
      TabIndex        =   1
      Top             =   1800
      Width           =   2535
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
      Left            =   4560
      TabIndex        =   0
      Top             =   1080
      Width           =   2535
   End
   Begin VB.Label Label4 
      Caption         =   "Last Record :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   960
      TabIndex        =   14
      Top             =   4320
      Width           =   1935
   End
   Begin VB.Label Label8 
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
      Left            =   6720
      TabIndex        =   13
      Top             =   4920
      Width           =   2295
   End
   Begin VB.Label Label7 
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
      Left            =   3840
      TabIndex        =   12
      Top             =   4920
      Width           =   2295
   End
   Begin VB.Label Label6 
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
      Left            =   960
      TabIndex        =   11
      Top             =   4920
      Width           =   2295
   End
   Begin VB.Label Label5 
      Caption         =   "Welcome"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   5655
      TabIndex        =   6
      Top             =   240
      Width           =   1545
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
      Left            =   1800
      TabIndex        =   5
      Top             =   2640
      Width           =   2655
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
      Height          =   735
      Left            =   1800
      TabIndex        =   4
      Top             =   1800
      Width           =   2655
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
      Height          =   615
      Left            =   1800
      TabIndex        =   3
      Top             =   1080
      Width           =   2655
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
rst5.Open "select * from st1 where st_name='" & Combo1.Text & "'", con, adOpenDynamic, adLockOptimistic, adCmdText
Set Text1.DataSource = rst5
Text1.DataField = "st_name"
Set Text2.DataSource = rst5
Text2.DataField = "st_course"
Set Text3.DataSource = rst5
Text3.DataField = "st_fee"
rst5.Close
End Sub

Private Sub Form_Load()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
con.Open
rst4.Open "select * from st1", con, adOpenDynamic, adLockOptimistic, adCmdText
rst4.MoveFirst
While rst4.EOF <> True
Combo1.AddItem rst4!st_name
rst4.MoveNext
Wend
rst1.Open "select * from st1", con, adOpenDynamic, adLockOptimistic, adCmdText
Set Text1.DataSource = rst1
Text1.DataField = "st_name"
Set Text2.DataSource = rst1
Text2.DataField = "st_course"
Set Text3.DataSource = rst1
Text3.DataField = "st_fee"

rst5.Open "select count(*) from st1", con, adOpenDynamic, adLockOptimistic, adCmdText
Set Text4.DataSource = rst3
Text4.DataField = "st_name"
Set Text5.DataSource = rst3
Text5.DataField = "st_course"
Set Text6.DataSource = rst3
Text6.DataField = "st_fee"
rst5.Close
End Sub
