VERSION 5.00
Begin VB.Form Main 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Club Organisation"
   ClientHeight    =   6615
   ClientLeft      =   60
   ClientTop       =   750
   ClientWidth     =   8355
   LinkTopic       =   "Form1"
   ScaleHeight     =   6615
   ScaleWidth      =   8355
   StartUpPosition =   2  'CenterScreen
   Begin VB.OptionButton Option4 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Member's Bill"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2160
      TabIndex        =   4
      Top             =   3720
      Width           =   3615
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Customer Information"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2160
      TabIndex        =   2
      Top             =   2880
      Width           =   3615
   End
   Begin VB.OptionButton Option3 
      BackColor       =   &H00C0E0FF&
      Caption         =   "FeedBack/Complaint"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2160
      TabIndex        =   1
      Top             =   4560
      Width           =   3615
   End
   Begin VB.CommandButton cmdexit 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2160
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   5640
      Width           =   3615
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Welcome to"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2640
      TabIndex        =   5
      Top             =   720
      Width           =   2895
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   4
      Height          =   1935
      Left            =   480
      Shape           =   4  'Rounded Rectangle
      Top             =   480
      Width           =   7215
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0E0FF&
      Caption         =   "Club MemberShip System"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   1200
      TabIndex        =   3
      Top             =   1560
      Width           =   5880
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdexit_Click()
End
End Sub

Private Sub cmdok_Click()
If Option1 Then
Emp.Show
ElseIf Option2 Then
Pro.Show
ElseIf Option3 Then
Grade.Show
ElseIf Option4 Then
Report.Show
End If
Unload Me
End Sub


Private Sub Form_Load()

End Sub

Private Sub Option1_Click()
Emp.Show


End Sub

Private Sub Option2_Click()

frmMS.Show

End Sub

Private Sub Option3_Click()
frmFeedBack.Show

End Sub

Private Sub Option4_Click()
frmMSMas.Show

End Sub
