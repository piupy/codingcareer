VERSION 5.00
Begin VB.Form Form20 
   Caption         =   "Form20"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form20"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get Your Membership Cost"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1920
      TabIndex        =   1
      Top             =   3840
      Width           =   3255
   End
   Begin VB.Label Label1 
      Caption         =   "Sports Membership Form"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   6255
   End
End
Attribute VB_Name = "Form20"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer
Private Sub Command1_Click()
a = InputBox("Enter Your Age")
b = InputBox("Enter The Number Of Years You Have Been The Member Of The Sports Club")
Select Case a
Case Is < 18
MsgBox "You Are A Junior"
Select Case b
Case Is < 2
MsgBox "Your Membership Cost Is  600 "
Case 2 To 9
MsgBox "Your Membership Cost Is  400"
Case Is >= 10
MsgBox "Your Membership Cost Is  900"
End Select
Case 19 To 49
MsgBox "You Are Senior"
Select Case b
Case Is >= 10
MsgBox "Your Membership Cost Is  900"
Case Is < 10
MsgBox "Your Membership Cost Is  1200"
End Select
Case Is >= 50
MsgBox "You Are A Veteran"
Select Case b
Case Is >= 10
MsgBox "Your Membership Cost Is  500"
Case Is < 10
MsgBox "Your Membership Cost Is  800"
End Select
End Select
End Sub
