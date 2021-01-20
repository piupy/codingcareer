VERSION 5.00
Begin VB.Form Form6 
   Caption         =   "Feedback Form"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form6"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Don't Submit"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   9240
      TabIndex        =   2
      Top             =   9240
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Submit"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5040
      TabIndex        =   1
      Top             =   9240
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4455
      Left            =   0
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   3240
      Width           =   15135
   End
   Begin VB.PictureBox Picture1 
      Height          =   21375
      Left            =   -120
      Picture         =   "Form6.frx":0000
      ScaleHeight     =   21315
      ScaleWidth      =   15315
      TabIndex        =   3
      Top             =   0
      Width           =   15375
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   4200
         TabIndex        =   7
         Top             =   7800
         Width           =   10935
      End
      Begin VB.Label Label3 
         Caption         =   "Your Email-ID  :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   120
         TabIndex        =   6
         Top             =   7800
         Width           =   3975
      End
      Begin VB.Label Label2 
         Caption         =   "Please Give Your Valuable Feedback . You Feedback will be helpful in upgradation of this Software ."
         BeginProperty Font 
            Name            =   "Kunstler Script"
            Size            =   36
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   0
         TabIndex        =   5
         Top             =   1680
         Width           =   15615
      End
      Begin VB.Label Label1 
         Caption         =   "Feedback Form"
         BeginProperty Font 
            Name            =   "Gigi"
            Size            =   72
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1455
         Left            =   3240
         TabIndex        =   4
         Top             =   0
         Width           =   8895
      End
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=C:\Users\Lucky\Desktop\My Project\faculty.mdb"
con.Open
con.Execute "insert into feedback values(' " & Text1.Text & " ' , ' " & Text2.Text & " ' ) "
con.Close
MsgBox "Your Feedback is Stored Successfully.You Will Be Reverted Back As Soon As Possible.Thank You.", , "Thank You"
Form1.Show
Unload Me
End Sub

Private Sub Command2_Click()
Form1.Show
Unload Me
End Sub

