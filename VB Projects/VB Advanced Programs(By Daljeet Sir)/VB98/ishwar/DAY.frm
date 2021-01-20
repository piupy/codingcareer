VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
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
      Left            =   4920
      TabIndex        =   4
      Top             =   5040
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&CLEAR"
      Height          =   615
      Left            =   2760
      TabIndex        =   3
      Top             =   5040
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CHECK DAY"
      Height          =   615
      Left            =   600
      TabIndex        =   2
      Top             =   5040
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   4080
      TabIndex        =   1
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "ENTER A NUMBER :"
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
      Left            =   600
      TabIndex        =   0
      Top             =   840
      Width           =   2520
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim N As Integer
N = Val(Text1.Text)
Select Case N
    Case 1: MsgBox " IT'S SUNDAY..."
    Case 2: MsgBox "IT'S MONDAY..."
    Case 3: MsgBox "IT'S TUESDAY..."
    Case 4: MsgBox " IT'S WEDNESDAY..."
    Case 5: MsgBox "IT'S THURSDAY..."
    Case 6: MsgBox "IT'S FRIDAY..."
    Case 7: MsgBox " IT'S SATURDAY..."
    Case Else: MsgBox "INVALID DAY..."
End Select
End Sub

Private Sub Command2_Click()
    Text1 = ""
End Sub

Private Sub Command3_Click()
End
End Sub
