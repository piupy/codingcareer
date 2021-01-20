VERSION 5.00
Begin VB.Form Form25 
   Caption         =   "Form25"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form25"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.OptionButton Option4 
      Caption         =   "Board Member"
      Height          =   615
      Left            =   600
      TabIndex        =   5
      Top             =   4680
      Width           =   2895
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Manager"
      Height          =   495
      Left            =   600
      TabIndex        =   4
      Top             =   3720
      Width           =   2775
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Assistant Manager"
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   2760
      Width           =   2655
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Clerk"
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   1800
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get Your Salary And Tax"
      Height          =   855
      Left            =   4320
      TabIndex        =   1
      Top             =   2640
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Staff Of A Company"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3840
      TabIndex        =   0
      Top             =   360
      Width           =   5055
   End
End
Attribute VB_Name = "Form25"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer

Private Sub Command1_Click()
If Option1.Value = True Then
a = InputBox("Enter Your Experience(In Years)")
If a <= 10 Then
MsgBox "Your Salary Is 10000 and You Have To Pay a Tax of 5%"
ElseIf a > 10 Then
MsgBox "Your Salary Is 20000 and You Have To Pay A Tax of 8%"
End If
ElseIf Option2.Value = True Then
a = InputBox("Enter Your Experience(In Years)")
If a <= 5 Then
MsgBox "Your Salary Is 30000 and You Have To Pay A Tax of 8%"
ElseIf a > 5 Then
MsgBox "Your Salary Is 35000 and You Have To Pay A Tax of 8.5%"
End If
ElseIf Option3.Value = True Then
a = InputBox("Enter Your Experience(In Years)")
If a <= 10 Then
MsgBox "Your Salary Is 50000 and You Have To Pay A Tax of 10%"
ElseIf a > 10 Then
MsgBox "Your Salary Is 60000 and You Have To Pay A Tax of 12%"
End If
ElseIf Option4.Value = True Then
a = InputBox("Enter Your Experience(In Years)")
If a <= 15 Then
MsgBox "Your Salary Is 100000 and You Have To Pay A Tax of 13%"
ElseIf a > 15 Then
MsgBox "Your Salary Is 125000 and You Have To Pay A Tax of 14%"
End If
End If
End Sub
