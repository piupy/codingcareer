VERSION 5.00
Begin VB.Form Form27 
   Caption         =   "Form27"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form27"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get The First 10 Natural Numbers"
      Height          =   735
      Left            =   1440
      TabIndex        =   1
      Top             =   2280
      Width           =   4575
   End
   Begin VB.Label Label1 
      Caption         =   "For Next Loop"
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
      Left            =   4440
      TabIndex        =   0
      Top             =   480
      Width           =   4215
   End
End
Attribute VB_Name = "Form27"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer

Private Sub Command1_Click()
For i = 1 To 10
Print i * 5
i = i + 1
Next i

End Sub

