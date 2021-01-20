VERSION 5.00
Begin VB.Form Form5 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Feedback Form"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form5"
   Picture         =   "Form5.frx":0000
   ScaleHeight     =   8430
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFC0&
      BorderStyle     =   0  'None
      Height          =   8415
      Left            =   120
      TabIndex        =   0
      Top             =   -120
      Width           =   19695
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   3960
         TabIndex        =   7
         Top             =   1680
         Width           =   15255
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H00C0C0FF&
         Caption         =   "Don't Submit"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   8520
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   7440
         Width           =   2655
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0C0FF&
         Caption         =   "Submit"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   5160
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   7440
         Width           =   2655
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3735
         Left            =   360
         MultiLine       =   -1  'True
         TabIndex        =   2
         Top             =   3360
         Width           =   18855
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H0080FF80&
         Caption         =   "Your E-Mail ID :          ( Required)"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   360
         TabIndex        =   6
         Top             =   1680
         Width           =   3615
      End
      Begin VB.Label Label2 
         BackColor       =   &H0080FF80&
         Caption         =   "Start From Below :"
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
         Left            =   360
         TabIndex        =   5
         Top             =   2880
         Width           =   3615
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H0080FF80&
         Caption         =   "Please Give Your Valuable Feedback . You Feedback will be helpful in upgradation of this Software ."
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   360
         TabIndex        =   1
         Top             =   360
         Width           =   14535
      End
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\transport.mdb;"
con.Open
If Len(Trim(Text1.Text)) > 0 And Len(Trim(Text2.Text)) > 0 Then
con.Execute "insert into feedback values(' " & Text1.Text & " ' , ' " & Text2.Text & " ' ) "
con.Close
MsgBox "Your Feedback is Stored Successfully.You Will Be Reverted Back As Soon As Possible.Thank You.", , "Thank You"
Command1.Enabled = False
Command2.Enabled = False
Else: MsgBox "You Left Either Box Blank.", vbCritical, "Sorry"
End If
End Sub

Private Sub Command2_Click()
MsgBox "Your Feedback Was Not Submitted", vbCritical, "Failure"
End Sub

Private Sub Form_Load()
Command1.Enabled = False
Command2.Enabled = False
End Sub


Private Sub Text1_Change()
Command1.Enabled = Len(Trim(Text1.Text)) > 0
Command2.Enabled = Len(Trim(Text1.Text)) > 0

End Sub

Private Sub Text2_Change()
Command1.Enabled = Len(Trim(Text2.Text)) > 0
Command2.Enabled = Len(Trim(Text2.Text)) > 0

End Sub
