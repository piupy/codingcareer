VERSION 5.00
Begin VB.Form Form44 
   Caption         =   "Form44"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form44"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter The Elements of an Array"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   960
      TabIndex        =   1
      Top             =   2520
      Width           =   2775
   End
   Begin VB.Label Label1 
      Caption         =   "Linear Search In An Array"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Top             =   840
      Width           =   4815
   End
End
Attribute VB_Name = "Form44"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(10) As Integer, x As Integer, k As Integer
Private Sub Command1_Click()
i = 1
Do While i < 11
a(i) = InputBox("Enter The Elements of Array")
i = i + 1
Loop
k = 1
Do While k < 11
Print a(k)
k = k + 1
Loop
j = 1
x = InputBox("Enter The Element You Want To Search In The List")
Do While j < 11
If StrComp(x, a(j)) = 0 Then
MsgBox x & " Is Present At Position " & j & " In The List "
End If
j = j + 1
Loop

End Sub
