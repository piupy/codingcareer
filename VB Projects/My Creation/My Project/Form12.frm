VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form12 
   BackColor       =   &H00404000&
   Caption         =   "Surender Singh"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form12"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
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
      Height          =   735
      Left            =   13200
      TabIndex        =   8
      Top             =   600
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Get Your Monthly Report"
      BeginProperty Font 
         Name            =   "Gabriola"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   9240
      TabIndex        =   6
      Top             =   8760
      Width           =   3855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Submit Your Attendance"
      BeginProperty Font 
         Name            =   "Gabriola"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4680
      TabIndex        =   5
      Top             =   8760
      Width           =   3735
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
      Height          =   5535
      Left            =   120
      TabIndex        =   1
      Top             =   2160
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
         Height          =   660
         Left            =   10080
         TabIndex        =   7
         Top             =   4320
         Width           =   2775
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
         Left            =   1800
         TabIndex        =   4
         Top             =   4320
         Width           =   3495
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   495
         Left            =   5640
         TabIndex        =   3
         Top             =   2880
         Width           =   4455
         _ExtentX        =   7858
         _ExtentY        =   873
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
         Format          =   95420417
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
         Height          =   855
         Left            =   1320
         TabIndex        =   2
         Top             =   1320
         Width           =   12015
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Welcome Surender Singh"
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
      Left            =   3240
      TabIndex        =   0
      Top             =   360
      Width           =   8655
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Option1.Value = True Then
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=C:\Users\Lucky\Desktop\My Project\faculty.mdb"
con.Open
con.Execute "insert into ssattendance values(' " & DTPicker1.Value & " ','Present')"
con.Close
MsgBox "You Have Been Successfully Marked As Present For The Specified Date.", , "Thank You"
MsgBox "Your Attendance is Saved Successfully.", , "Attendance Saved"
DTPicker1.Enabled = False
Option1.Enabled = False
Option2.Enabled = False
ElseIf Option2.Value = True Then
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=C:\Users\Lucky\Desktop\My Project\faculty.mdb"
con.Open
con.Execute "insert into ssattendance values(' " & DTPicker1.Value & " ','Absent')"
con.Close
MsgBox "You Have Been Successfully Marked As Absent For The Specified Date.", , "Thank You"
MsgBox "Your Attendance is Saved Successfully.", , "Attendance Saved"
DTPicker1.Enabled = False
Option1.Enabled = False
Option2.Enabled = False
End If
End Sub

Private Sub Command2_Click()
DataReport4.Show

End Sub

Private Sub Command3_Click()
MsgBox "Successfully Logged Out.", , "Logged Out"
Form1.Show
Unload Me
End Sub

