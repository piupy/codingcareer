VERSION 5.00
Begin VB.Form Form16 
   Caption         =   "Form16"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form16"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter A Number"
      Height          =   615
      Left            =   1320
      TabIndex        =   1
      Top             =   2040
      Width           =   3135
   End
   Begin VB.Label Label1 
      Caption         =   "Select Case "
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
      Left            =   1920
      TabIndex        =   0
      Top             =   480
      Width           =   3975
   End
End
Attribute VB_Name = "Form16"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer

Private Sub Command1_Click()
a = InputBox("Enter A Number")
Select Case a
Case 75 To 100
MsgBox "Grade A"
Case 50 To 74
MsgBox "Grade B"
End Select

End Sub
