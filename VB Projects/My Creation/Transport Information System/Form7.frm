VERSION 5.00
Begin VB.Form Form7 
   BackColor       =   &H000000C0&
   Caption         =   "Air Conditioned Buses"
   ClientHeight    =   3030
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   4560
   LinkTopic       =   "Form7"
   Picture         =   "Form7.frx":0000
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0FF&
      BorderStyle     =   0  'None
      Height          =   9375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   19095
      Begin VB.CommandButton Command2 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Non-AC Buses"
         BeginProperty Font 
            Name            =   "Monotype Corsiva"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   6240
         Style           =   1  'Graphical
         TabIndex        =   14
         Top             =   7080
         Width           =   2415
      End
      Begin VB.PictureBox Picture1 
         Height          =   5055
         Left            =   7920
         Picture         =   "Form7.frx":2CC1C
         ScaleHeight     =   4995
         ScaleWidth      =   6675
         TabIndex        =   13
         Top             =   1680
         Width           =   6735
      End
      Begin VB.Timer Timer1 
         Interval        =   150
         Left            =   1560
         Top             =   360
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Log Out"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   12600
         Style           =   1  'Graphical
         TabIndex        =   11
         Top             =   600
         Width           =   2055
      End
      Begin VB.TextBox Text4 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         Locked          =   -1  'True
         TabIndex        =   10
         Top             =   5760
         Width           =   2655
      End
      Begin VB.TextBox Text3 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4200
         Locked          =   -1  'True
         TabIndex        =   9
         Top             =   5040
         Width           =   2655
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2280
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   2880
         Width           =   5535
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2280
         Locked          =   -1  'True
         TabIndex        =   5
         Top             =   2160
         Width           =   5535
      End
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   525
         Left            =   9120
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   840
         Width           =   2415
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Fare = Rs.25 for Each Bus           "
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   5520
         TabIndex        =   12
         Top             =   120
         Width           =   5775
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Destination Time : "
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   720
         TabIndex        =   8
         Top             =   5760
         Width           =   3495
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "Departure Time :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   720
         TabIndex        =   7
         Top             =   5040
         Width           =   3495
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "To : "
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   480
         TabIndex        =   4
         Top             =   2880
         Width           =   1815
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFFF&
         Caption         =   "From :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   480
         TabIndex        =   3
         Top             =   2160
         Width           =   1815
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFFF&
         Caption         =   "Bus Route Number :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4320
         TabIndex        =   2
         Top             =   840
         Width           =   4815
      End
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
con.Open
rst1.Open "select * from bus where bid = " & Combo1.Text & " ", con, adOpenDynamic, adLockOptimistic, adCmdText
Set Text1.DataSource = rst1
Text1.DataField = "bfrom"
Set Text2.DataSource = rst1
Text2.DataField = "bto"
Set Text3.DataSource = rst1
Text3.DataField = "bdep"
Set Text4.DataSource = rst1
Text4.DataField = "bdes"
rst1.Close
con.Close
End Sub

Private Sub Command1_Click()
MsgBox "You Have Successfully Logged Out.", vbInformation, "Logged Out"
Form1.Show
Unload Me
End Sub

Private Sub Command2_Click()
Form8.Show
Unload Me
End Sub

Private Sub Form_Load()
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\transport.mdb;"
con.Open
rst.Open "select * from bus order by bid", con, adOpenDynamic, adLockOptimistic
rst.MoveFirst
While Not rst.EOF = True
Combo1.AddItem rst(0)
rst.MoveNext
Wend
con.Close
End Sub



Private Sub Timer1_Timer()
Label8.Caption = Mid(Label8.Caption, 2) & Left(Label8.Caption, 1)
End Sub
