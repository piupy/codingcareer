VERSION 5.00
Begin VB.Form Form32 
   Caption         =   "Form32"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form32"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get The First 10 Natural numbers"
      Height          =   735
      Left            =   1440
      TabIndex        =   1
      Top             =   2760
      Width           =   2775
   End
   Begin VB.Label Label1 
      Caption         =   "Do Loop Until"
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
      Left            =   3720
      TabIndex        =   0
      Top             =   600
      Width           =   3855
   End
End
Attribute VB_Name = "Form32"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
i = 1
Do
Print i
i = i + 1
Loop Until i = 11

End Sub
