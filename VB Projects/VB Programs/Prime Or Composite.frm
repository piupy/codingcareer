VERSION 5.00
Begin VB.Form Form12 
   Caption         =   "Form12"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form12"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Check Whether The Number Is Prime Or Composite"
      Height          =   1095
      Left            =   1920
      TabIndex        =   2
      Top             =   2400
      Width           =   2415
   End
   Begin VB.TextBox Text1 
      Height          =   855
      Left            =   3480
      TabIndex        =   1
      Top             =   600
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Enter A Number"
      Height          =   615
      Left            =   600
      TabIndex        =   0
      Top             =   720
      Width           =   2295
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer, b As Integer, i As Integer
Private Sub Command1_Click()
a = Text1.Text
b = a - 1
For i = 2 To b Step 1
If a Mod i = 0 Then
MsgBox "It Is Composite Number"
Else: MsgBox "It Is Prime Number"



End If
Next i
End Sub
