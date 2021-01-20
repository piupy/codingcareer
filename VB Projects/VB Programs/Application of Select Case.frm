VERSION 5.00
Begin VB.Form Form17 
   Caption         =   "Form17"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form17"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter A Character"
      Height          =   1335
      Left            =   1200
      TabIndex        =   0
      Top             =   1320
      Width           =   3975
   End
End
Attribute VB_Name = "Form17"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String
Private Sub Command1_Click()
a = InputBox("Enter A Character")
Select Case a
Case Chr(97) To Chr(122)
MsgBox "You Have Entered Alphabet " & a & " Having ASCII Value " & Asc(a) & " And It Is A Lower Case Alphabet"
Case Chr(65) To Chr(90)
MsgBox "You Have Entered Alphabet " & a & " Having ASCII Value " & Asc(a) & " And It Is An Upper Case Alphabet"
Case 1 To 100
MsgBox "You Have Entered An Integer"
End Select
End Sub
