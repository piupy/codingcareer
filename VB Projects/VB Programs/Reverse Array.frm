VERSION 5.00
Begin VB.Form Form46 
   Caption         =   "Form46"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form46"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Enter The Elements of Array"
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
      Left            =   2400
      TabIndex        =   1
      Top             =   2040
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Technique To Reverse An Array"
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
      Left            =   720
      TabIndex        =   0
      Top             =   480
      Width           =   5895
   End
End
Attribute VB_Name = "Form46"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(5) As Integer, j As Integer, i As Integer, x As Integer, c As Integer

Private Sub Command1_Click()
i = 1
Do While i < 6
a(i) = InputBox("Enter The Elements of Array")
i = i + 1
Loop
j = 1
MsgBox "The Original Array Is "
Do While j < 6

Print a(j)
j = j + 1
Loop
x = 1
c = 0
Do While x < 6
c = c + 1
x = x + 1
Loop
MsgBox "Your Array Has " & c & " Characters "

MsgBox "The Elements In Reverse Order Are "
z = c
Do While z >= 1
Print a(z)
z = z - 1
Loop
End Sub
