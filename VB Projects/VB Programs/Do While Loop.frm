VERSION 5.00
Begin VB.Form Form29 
   Caption         =   "Form29"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form29"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get First 10 Natural Numbers"
      Height          =   615
      Left            =   2520
      TabIndex        =   1
      Top             =   2400
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Do While Loop"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3480
      TabIndex        =   0
      Top             =   600
      Width           =   3615
   End
End
Attribute VB_Name = "Form29"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer

Private Sub Command1_Click()
i = 1
Do While i <= 10
Print i
i = i + 1
Loop

End Sub

