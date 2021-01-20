VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00FFC0FF&
   Caption         =   "Form2"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Go To Form 3"
      Height          =   975
      Left            =   2400
      TabIndex        =   7
      Top             =   7080
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get The Answer"
      Height          =   855
      Left            =   2400
      TabIndex        =   6
      Top             =   5520
      Width           =   2175
   End
   Begin VB.TextBox Text3 
      Height          =   855
      Left            =   4320
      TabIndex        =   5
      Top             =   3840
      Width           =   2535
   End
   Begin VB.TextBox Text2 
      Height          =   975
      Left            =   4320
      TabIndex        =   3
      Top             =   2280
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   765
      Left            =   4320
      TabIndex        =   1
      Top             =   720
      Width           =   2535
   End
   Begin VB.Label Label3 
      Caption         =   "Your Answer Is"
      Height          =   735
      Left            =   480
      TabIndex        =   4
      Top             =   3960
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Enter The Second Number"
      Height          =   735
      Left            =   480
      TabIndex        =   2
      Top             =   2400
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "Enter The First Number"
      Height          =   735
      Left            =   480
      TabIndex        =   0
      Top             =   720
      Width           =   2775
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Single, b As Single, c As Single

Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
c = a * b
Text3.Text = c

End Sub

Private Sub Command2_Click()
Form3.Show

End Sub
