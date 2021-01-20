VERSION 5.00
Begin VB.Form Form31 
   Caption         =   "Form31"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form31"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get The First 10 Natural Numbers"
      Height          =   975
      Left            =   2400
      TabIndex        =   1
      Top             =   3000
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Do Until Loop"
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
      Left            =   3480
      TabIndex        =   0
      Top             =   600
      Width           =   3975
   End
End
Attribute VB_Name = "Form31"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
i = 1
Do Until i = 11
Print i
i = i + 1
Loop

End Sub
