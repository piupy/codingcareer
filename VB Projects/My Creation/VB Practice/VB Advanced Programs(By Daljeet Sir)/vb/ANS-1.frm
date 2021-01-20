VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5265
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6780
   LinkTopic       =   "Form1"
   ScaleHeight     =   5265
   ScaleWidth      =   6780
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "EXIT"
      Height          =   375
      Left            =   1080
      TabIndex        =   5
      Top             =   4080
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DELETE ALL"
      Height          =   375
      Left            =   1080
      TabIndex        =   4
      Top             =   3360
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "TRANSFER  DATA"
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   2640
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   1620
      Left            =   4800
      TabIndex        =   2
      Top             =   360
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "ENTER THE TEXT TO BE SENT      TO LIST BOX HERE->"
      Height          =   2055
      Left            =   120
      TabIndex        =   1
      Top             =   240
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
List1.AddItem Text1.Text
Text1.Text = ""
End Sub

Private Sub Command2_Click()
List1.Clear

End Sub

Private Sub Command3_Click()
End
End Sub
