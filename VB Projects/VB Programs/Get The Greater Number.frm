VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Form3"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form3"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Go To Form 4"
      Height          =   735
      Left            =   2400
      TabIndex        =   7
      Top             =   6600
      Width           =   3375
   End
   Begin VB.TextBox Text3 
      Height          =   735
      Left            =   3840
      TabIndex        =   6
      Top             =   3480
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Check Which Number Is Greater"
      Height          =   975
      Left            =   2520
      TabIndex        =   4
      Top             =   5040
      Width           =   3255
   End
   Begin VB.TextBox Text2 
      Height          =   855
      Left            =   3840
      TabIndex        =   3
      Top             =   2040
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   855
      Left            =   3840
      TabIndex        =   1
      Top             =   600
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "The Greater Number Is"
      Height          =   615
      Left            =   360
      TabIndex        =   5
      Top             =   3480
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "Enter The Second Number"
      Height          =   615
      Left            =   480
      TabIndex        =   2
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Enter The First Number"
      Height          =   615
      Left            =   480
      TabIndex        =   0
      Top             =   720
      Width           =   2055
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Single, b As Single
Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
If a > b Then
Text3.Text = a
Else: Text3.Text = b
End If

End Sub
