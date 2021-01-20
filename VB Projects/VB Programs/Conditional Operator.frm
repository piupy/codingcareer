VERSION 5.00
Begin VB.Form Form15 
   Caption         =   "Form15"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form15"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter Two Numbers"
      Height          =   855
      Left            =   1560
      TabIndex        =   1
      Top             =   2160
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Conditional Operator"
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
      Left            =   1680
      TabIndex        =   0
      Top             =   600
      Width           =   3495
   End
End
Attribute VB_Name = "Form15"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer, b As Integer, max As Integer

Private Sub Command1_Click()
a = InputBox("Enter The First Number")
b = InputBox("Enter The Second Number")
max = IIf(a > b, a, b)
MsgBox "The Greater Number IS " & max

End Sub
