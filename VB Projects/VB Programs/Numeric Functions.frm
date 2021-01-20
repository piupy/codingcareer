VERSION 5.00
Begin VB.Form Form13 
   Caption         =   "Form13"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form13"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.OptionButton Option9 
      Caption         =   "Random Number"
      Height          =   735
      Left            =   480
      TabIndex        =   10
      Top             =   6480
      Width           =   2295
   End
   Begin VB.OptionButton Option8 
      Caption         =   "Square Function"
      Height          =   615
      Left            =   4320
      TabIndex        =   9
      Top             =   5280
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Perform An Action"
      Height          =   855
      Left            =   4200
      TabIndex        =   8
      Top             =   6600
      Width           =   1935
   End
   Begin VB.OptionButton Option7 
      Caption         =   "Square Root Function"
      Height          =   735
      Left            =   4320
      TabIndex        =   7
      Top             =   4080
      Width           =   2415
   End
   Begin VB.OptionButton Option6 
      Caption         =   "Sign Function"
      Height          =   735
      Left            =   4200
      TabIndex        =   6
      Top             =   2880
      Width           =   2295
   End
   Begin VB.OptionButton Option5 
      Caption         =   "Round-off Function"
      Height          =   735
      Left            =   4200
      TabIndex        =   5
      Top             =   1560
      Width           =   2175
   End
   Begin VB.OptionButton Option4 
      Caption         =   "Integer Function"
      Height          =   735
      Left            =   480
      TabIndex        =   4
      Top             =   4920
      Width           =   2175
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Fix Function"
      Height          =   615
      Left            =   480
      TabIndex        =   3
      Top             =   3720
      Width           =   2055
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Exponential Function"
      Height          =   615
      Left            =   360
      TabIndex        =   2
      Top             =   2640
      Width           =   1935
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Absolute Function"
      Height          =   615
      Left            =   360
      TabIndex        =   1
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Numeric  Functions"
      Height          =   615
      Left            =   1920
      TabIndex        =   0
      Top             =   360
      Width           =   1815
   End
End
Attribute VB_Name = "Form13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Single, b As Integer
Private Sub Command1_Click()
a = InputBox("Enter A Number On Which You Want To Test The Given Function")
If Option1.Value = True Then
MsgBox "Absolute Value of " & a & "is" & Abs(a)
ElseIf Option2.Value = True Then
MsgBox "Exponential Value of e to the power " & a & " is " & Exp(a)
ElseIf Option3.Value = True Then
MsgBox "The Fix Function Value of the number " & a & " is " & Fix(a)
ElseIf Option4.Value = True Then
MsgBox "The Integer Value of " & a & " is " & Int(a)
ElseIf Option5.Value = True Then
b = InputBox("Enter Upto What Decimal Place You Want To Round-off")
MsgBox "Round-off Number to The Given Number Is " & Round(a, b)
ElseIf Option6.Value = True Then
b = Sgn(a)
If b = 1 Then
MsgBox "You Have Entered " & a & " Which Is A Positive Number "
ElseIf b = -1 Then
MsgBox " You Have Entered " & a & " Which Is A Negative Number "
ElseIf b = 0 Then
MsgBox " You Have Entered " & b & " Whose sign is " & b


End If
ElseIf Option7.Value = True Then
MsgBox "The Square of The Given Number Is " & Sqr(a)
ElseIf Option8.Value = True Then
MsgBox "The Square of The Given Number Is " & a ^ 2
ElseIf Option9.Value = True Then
MsgBox "Random Number Generated Is " & Rnd(a)
End If
End Sub


