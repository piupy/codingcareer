VERSION 5.00
Begin VB.Form Form4 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form4"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form4"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Go To Form 5"
      Height          =   735
      Left            =   2280
      TabIndex        =   7
      Top             =   7320
      Width           =   3855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get Your Full Name"
      Height          =   735
      Left            =   2400
      TabIndex        =   6
      Top             =   6000
      Width           =   3615
   End
   Begin VB.TextBox Text3 
      Height          =   975
      Left            =   4320
      TabIndex        =   5
      Top             =   4320
      Width           =   2415
   End
   Begin VB.TextBox Text2 
      Height          =   975
      Left            =   4320
      TabIndex        =   3
      Top             =   2400
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Height          =   855
      Left            =   4320
      TabIndex        =   1
      Top             =   840
      Width           =   2295
   End
   Begin VB.Label Label3 
      Caption         =   "Your Full Name Is"
      Height          =   735
      Left            =   600
      TabIndex        =   4
      Top             =   4440
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Enter The Last Name"
      Height          =   855
      Left            =   840
      TabIndex        =   2
      Top             =   2520
      Width           =   2775
   End
   Begin VB.Label Label1 
      Caption         =   "Enter The First Name"
      Height          =   735
      Left            =   840
      TabIndex        =   0
      Top             =   840
      Width           =   2655
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As String

Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
Text3.Text = a & " " & b

End Sub

Private Sub Command2_Click()
Form5.Show
End Sub
