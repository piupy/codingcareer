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
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   4440
      TabIndex        =   3
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SHOW REPORT"
      Height          =   615
      Left            =   1080
      TabIndex        =   2
      Top             =   2160
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2640
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "ENTER THE SALARY"
      Height          =   375
      Left            =   120
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
    DataEnvironment1.Command1 Val(Text1.Text), Val(Text2.Text)
    Load DataReport1
    DataReport1.Show
End Sub

