VERSION 5.00
Begin VB.Form Form34 
   Caption         =   "       "
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form34"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get The Fibonacii Series"
      Height          =   855
      Left            =   1680
      TabIndex        =   1
      Top             =   2520
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Fibonacii Series"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3960
      TabIndex        =   0
      Top             =   600
      Width           =   3015
   End
End
Attribute VB_Name = "Form34"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer, b As Integer, c As Integer

Private Sub Command1_Click()
a = InputBox("Enter The First Number of Fibonacii Series")
b = InputBox("Enter The Second Number of Fibonacii Series")
d = InputBox("Enter The Number Upto Which You Want The Fibonacii Series")
Do While c <= d
c = a + b
Print c
a = b
b = c
Loop

End Sub
