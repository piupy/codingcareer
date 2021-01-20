VERSION 5.00
Begin VB.Form Form47 
   Caption         =   "Form47"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form47"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter The Elements of Array"
      Height          =   735
      Left            =   2280
      TabIndex        =   1
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "To Find The Even and Odd Numbers In An Array"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   0
      Top             =   480
      Width           =   6495
   End
End
Attribute VB_Name = "Form47"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(5) As Integer, i As Integer, j As Integer
Private Sub Command1_Click()
i = 1
Do While i < 6
a(i) = InputBox("Enter Element")
i = i + 1
Loop
j = 1
Do While j < 6
If a(j) Mod 2 = 0 Then
MsgBox a(j) & " Is An Even Integer "
Else: MsgBox a(j) & " Is An Odd Integer "
End If
j = j + 1
Loop

End Sub
