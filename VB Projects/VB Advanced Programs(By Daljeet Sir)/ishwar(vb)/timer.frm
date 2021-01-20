VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   720
      Top             =   4920
   End
   Begin VB.CommandButton Command1 
      Caption         =   "start again"
      Height          =   975
      Left            =   3720
      TabIndex        =   1
      Top             =   4560
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "get set go......"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1680
      TabIndex        =   0
      Top             =   840
      Width           =   3975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer

Private Sub Command1_Click()
    i = 0
End Sub

Private Sub Timer1_Timer()
    i = i + 1
    Label1.Caption = i
    
End Sub
