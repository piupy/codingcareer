VERSION 5.00
Begin VB.Form Form43 
   Caption         =   "Form43"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form43"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter The Elements of an Array"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2280
      TabIndex        =   1
      Top             =   2520
      Width           =   3375
   End
   Begin VB.Label Label1 
      Caption         =   "Array Implementation"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   600
      Width           =   4935
   End
End
Attribute VB_Name = "Form43"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(10) As Integer

Private Sub Command1_Click()
i = 1
Do While i <= 10
a(i) = InputBox("Enter A Number")
i = i + 1
Loop
MsgBox "The Elements You Have Entered Are"
j = 1
Do While j <= 10
MsgBox a(j)
j = j + 1
Loop
End Sub
