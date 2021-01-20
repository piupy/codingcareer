VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FF8080&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "select a color"
   ClientHeight    =   2910
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2805
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2910
   ScaleWidth      =   2805
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   480
      TabIndex        =   10
      Top             =   2400
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   1560
      TabIndex        =   9
      Top             =   2400
      Width           =   855
   End
   Begin VB.Label Label9 
      BackColor       =   &H00FF00FF&
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   1800
      TabIndex        =   8
      Top             =   1440
      Width           =   735
   End
   Begin VB.Label Label8 
      BackColor       =   &H0000FF00&
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   1080
      TabIndex        =   7
      Top             =   1440
      Width           =   735
   End
   Begin VB.Label Label7 
      BackColor       =   &H00008080&
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   360
      TabIndex        =   6
      Top             =   1440
      Width           =   735
   End
   Begin VB.Label Label6 
      BackColor       =   &H00800080&
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   1800
      TabIndex        =   5
      Top             =   840
      Width           =   735
   End
   Begin VB.Label Label5 
      BackColor       =   &H00808000&
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   1080
      TabIndex        =   4
      Top             =   840
      Width           =   735
   End
   Begin VB.Label Label4 
      BackColor       =   &H00000000&
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   360
      TabIndex        =   3
      Top             =   840
      Width           =   735
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C00000&
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   1800
      TabIndex        =   2
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label2 
      BackColor       =   &H000000C0&
      BorderStyle     =   1  'Fixed Single
      Height          =   615
      Left            =   1080
      TabIndex        =   1
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label1 
      BackColor       =   &H00008000&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000001&
      Height          =   615
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim c As Integer, f As Integer
Private Sub Command1_Click()
    If f = 1 Then
        colorform.BackColor = QBColor(c)
    End If
    Form1.Hide
    colorform.Show
End Sub

Private Sub Command2_Click()
    Form1.Hide
    colorform.Show
End Sub

Private Sub Form_Load()
    f = 0
    
End Sub

Private Sub Label1_Click()
    f = 1
    c = 2
End Sub

Private Sub Label2_Click()
    f = 1
    c = 4
End Sub

Private Sub Label3_Click()
    f = 1
    c = 1
End Sub

Private Sub Label4_Click()
    f = 1
    c = 0
End Sub

Private Sub Label5_Click()
    f = 1
    c = 3
End Sub

Private Sub Label6_Click()
    f = 1
    c = 5
End Sub

Private Sub Label7_Click()
    f = 1
    c = 6
End Sub

Private Sub Label8_Click()
    f = 1
    c = 10
End Sub

Private Sub Label9_Click()
    f = 1
    c = 13
End Sub
