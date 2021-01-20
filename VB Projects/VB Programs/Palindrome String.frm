VERSION 5.00
Begin VB.Form Form26 
   Caption         =   "Form26"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form26"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter A String"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   1680
      TabIndex        =   0
      Top             =   2760
      Width           =   3375
   End
   Begin VB.Label Label1 
      Caption         =   "Palindrome String"
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
      Left            =   3480
      TabIndex        =   1
      Top             =   600
      Width           =   4095
   End
End
Attribute VB_Name = "Form26"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As String
Private Sub Command1_Click()
a = InputBox("Enter The String")
b = StrReverse(a)
If StrComp(a, b) = 0 Then
MsgBox "The String Is Palindrome"
Else: MsgBox "The String Is Not Palindrome"
End If

End Sub
