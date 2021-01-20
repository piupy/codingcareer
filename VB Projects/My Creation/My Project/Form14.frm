VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form14 
   BackColor       =   &H00404000&
   Caption         =   "Himani Bhatia"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form14"
   ScaleHeight     =   10950
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Log Out"
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
      Left            =   13200
      TabIndex        =   8
      Top             =   480
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Submit Your Attendance"
      BeginProperty Font 
         Name            =   "Gabriola"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   9240
      TabIndex        =   7
      Top             =   9000
      Width           =   3855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Submit Your Attendance"
      BeginProperty Font 
         Name            =   "Gabriola"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   3720
      TabIndex        =   6
      Top             =   9000
      Width           =   3975
   End
   Begin VB.Frame Frame1 
      Caption         =   "Please Make Changes In Your Attendance If You Want To Do (If Any Changes Are There )"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6255
      Left            =   120
      TabIndex        =   1
      Top             =   1920
      Width           =   14895
      Begin VB.OptionButton Option2 
         Caption         =   "Absent"
         BeginProperty Font 
            Name            =   "Curlz MT"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   9960
         TabIndex        =   5
         Top             =   4680
         Width           =   3495
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Present"
         BeginProperty Font 
            Name            =   "Curlz MT"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3360
         TabIndex        =   4
         Top             =   4800
         Width           =   3255
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   615
         Left            =   5520
         TabIndex        =   3
         Top             =   3120
         Width           =   4695
         _ExtentX        =   8281
         _ExtentY        =   1085
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   95354881
         CurrentDate     =   41946
      End
      Begin VB.Label Label2 
         Caption         =   "I Want To Mark My Attendance As For The Specified Date As : "
         BeginProperty Font 
            Name            =   "Chiller"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   1800
         TabIndex        =   2
         Top             =   1560
         Width           =   11775
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Welcome Himani Bhatia "
      BeginProperty Font 
         Name            =   "Edwardian Script ITC"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   3960
      TabIndex        =   0
      Top             =   240
      Width           =   8175
   End
End
Attribute VB_Name = "Form14"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Option1.Value = True Then
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=C:\Users\Lucky\Desktop\My Project\faculty.mdb"
con.Open
con.Execute "insert into hbattendance values(' " & DTPicker1.Value & " ','Present')"
con.Close
MsgBox "You Have Been Successfully Marked As Present For The Specified Date.", , "Thank You"
MsgBox "Your Attendance is Saved Successfully.", , "Attendance Saved"
DTPicker1.Enabled = False
Option1.Enabled = False
Option2.Enabled = False
ElseIf Option2.Value = True Then
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=C:\Users\Lucky\Desktop\My Project\faculty.mdb"
con.Open
con.Execute "insert into hbattendance values(' " & DTPicker1.Value & " ','Absent')"
con.Close
MsgBox "You Have Been Successfully Marked As Absent For The Specified Date.", , "Thank You"
MsgBox "Your Attendance is Saved Successfully.", , "Attendance Saved"
DTPicker1.Enabled = False
Option1.Enabled = False
Option2.Enabled = False
End If
End Sub

Private Sub Command2_Click()
DataReport6.Show

End Sub

Private Sub Command3_Click()
MsgBox "Successfully Logged Out.", , "Logged Out"
Form1.Show
Unload Me
End Sub

