VERSION 5.00
Begin VB.Form Form1 
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "E&XIT"
      Height          =   615
      Left            =   5520
      TabIndex        =   4
      Top             =   5040
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   615
      Left            =   3000
      TabIndex        =   3
      Top             =   5040
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHECK GRADE"
      Height          =   615
      Left            =   600
      TabIndex        =   2
      Top             =   5040
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3600
      TabIndex        =   1
      Top             =   480
      Width           =   1935
   End
   Begin VB.Label Label2 
      Height          =   1215
      Left            =   480
      TabIndex        =   5
      Top             =   2400
      Width           =   6855
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ENTER MARKS :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim M As Integer
M = Val(Text1)
If (M >= 0 And M < 50) Then
    Label2.Caption = "FAILED....."
ElseIf (M >= 50 And M < 60) Then
    Label2.Caption = "C GRADE....."
ElseIf (M >= 60 And M < 70) Then
    Label2.Caption = "B GRADE....."
ElseIf (M >= 70 And M < 80) Then
    Label2.Caption = "A GRADE....."
ElseIf (M >= 80 And M <= 100) Then
    Label2.Caption = "A+ GRADE....."
Else
    Label2.Caption = "INVALID MARKS....."
End If

End Sub

Private Sub Command2_Click()
Text1 = ""
Label2.Caption = ""
End Sub

Private Sub Command3_Click()
End
End Sub
