VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFC0&
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Go To Form2"
      Height          =   975
      Left            =   1680
      TabIndex        =   7
      Top             =   7320
      Width           =   5295
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
      Height          =   855
      Left            =   4200
      TabIndex        =   6
      Top             =   4320
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Find Out The Answer"
      Height          =   855
      Left            =   1560
      TabIndex        =   4
      Top             =   5640
      Width           =   5535
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
      Height          =   975
      Left            =   4080
      TabIndex        =   3
      Top             =   2640
      Width           =   1935
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
      Height          =   1125
      Left            =   3960
      TabIndex        =   1
      Top             =   720
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "The Aswer Is"
      Height          =   495
      Left            =   600
      TabIndex        =   5
      Top             =   4320
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Enter The Second Number"
      Height          =   615
      Left            =   480
      TabIndex        =   2
      Top             =   2640
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "Enter The First Number"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   720
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Single, b As Single, c As Single

Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
c = a + b
Text3.Text = c

End Sub

Private Sub Command2_Click()
Form2.Show


End Sub

