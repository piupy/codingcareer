VERSION 5.00
Begin VB.Form Form7 
   Caption         =   "Form7"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form7"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Check Your Gender"
      Height          =   855
      Left            =   2400
      TabIndex        =   7
      Top             =   5400
      Width           =   2775
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   3240
      TabIndex        =   5
      Top             =   4080
      Width           =   3495
   End
   Begin VB.Timer Timer1 
      Interval        =   3000
      Left            =   6960
      Top             =   840
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Female"
      Height          =   615
      Left            =   3240
      TabIndex        =   4
      Top             =   2760
      Width           =   3015
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Male"
      Height          =   495
      Left            =   3240
      TabIndex        =   3
      Top             =   1800
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   3360
      TabIndex        =   1
      Top             =   840
      Width           =   3015
   End
   Begin VB.Label Label3 
      Caption         =   "Your Gender Is"
      Height          =   735
      Left            =   240
      TabIndex        =   6
      Top             =   4080
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Gender"
      Height          =   615
      Left            =   360
      TabIndex        =   2
      Top             =   1920
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Name"
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   960
      Width           =   2055
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String

Private Sub Command1_Click()
If Option1.Value = True Then
Text2.Text = "Male"
Else: Text2.Text = "Female"
End If
End Sub

Private Sub Timer1_Timer()
Print "Welcome To Our Form"

End Sub
