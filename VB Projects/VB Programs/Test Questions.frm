VERSION 5.00
Begin VB.Form Form36 
   Caption         =   "Form36"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form36"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Enter"
      Height          =   615
      Left            =   4440
      TabIndex        =   8
      Top             =   4320
      Width           =   1575
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Female"
      Height          =   495
      Left            =   480
      TabIndex        =   7
      Top             =   5040
      Width           =   2175
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Male"
      Height          =   375
      Left            =   480
      TabIndex        =   6
      Top             =   4320
      Width           =   2055
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   4200
      TabIndex        =   4
      Top             =   2640
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   4080
      TabIndex        =   2
      Top             =   1440
      Width           =   2175
   End
   Begin VB.Label Label4 
      Caption         =   "Select Your Gender"
      Height          =   255
      Left            =   600
      TabIndex        =   5
      Top             =   3720
      Width           =   2535
   End
   Begin VB.Label Label3 
      Caption         =   "Enter Your Age"
      Height          =   615
      Left            =   600
      TabIndex        =   3
      Top             =   2640
      Width           =   2415
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Your Name"
      Height          =   495
      Left            =   720
      TabIndex        =   1
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Test Question"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1920
      TabIndex        =   0
      Top             =   360
      Width           =   3615
   End
End
Attribute VB_Name = "Form36"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As Integer

Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
If b >= 18 Then
MsgBox "Your Name Is " & UCase(a)
MsgBox "Your Age Is " & b
If Option1.Value = True Then
MsgBox "You Are A Male"
Else: MsgBox "You Are A Female"
End If
MsgBox "You Are Eligible To Open This Site"
Form37.Show
Else: MsgBox "Sorry! You Are Not Eligible To Open This Site"
End If

End Sub

