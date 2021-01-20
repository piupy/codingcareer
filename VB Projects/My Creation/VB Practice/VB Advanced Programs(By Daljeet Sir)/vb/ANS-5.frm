VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6555
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10605
   LinkTopic       =   "Form1"
   ScaleHeight     =   6555
   ScaleWidth      =   10605
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "result"
      Height          =   855
      Left            =   4320
      TabIndex        =   19
      Top             =   5160
      Width           =   2175
   End
   Begin VB.Frame Frame3 
      Caption         =   "Frame2"
      Height          =   855
      Left            =   6840
      TabIndex        =   14
      Top             =   5520
      Width           =   3615
      Begin VB.TextBox Text8 
         Height          =   375
         Left            =   2160
         TabIndex        =   15
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label8 
         Caption         =   "GRADING"
         Height          =   375
         Left            =   600
         TabIndex        =   18
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Frame2"
      Height          =   855
      Left            =   3720
      TabIndex        =   12
      Top             =   3960
      Width           =   3615
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   2160
         TabIndex        =   13
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label7 
         Caption         =   "PERCENTAGE"
         Height          =   375
         Left            =   360
         TabIndex        =   17
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   855
      Left            =   360
      TabIndex        =   10
      Top             =   5520
      Width           =   3615
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   2160
         TabIndex        =   11
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label6 
         Caption         =   "TOTAL MARKS"
         Height          =   375
         Left            =   360
         TabIndex        =   16
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   2760
      TabIndex        =   9
      Top             =   2880
      Width           =   855
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   2760
      TabIndex        =   8
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   2760
      TabIndex        =   7
      Top             =   1680
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   2760
      TabIndex        =   6
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2760
      TabIndex        =   5
      Top             =   480
      Width           =   855
   End
   Begin VB.Label Label5 
      Caption         =   "COMPUTERS"
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "HINDI"
      Height          =   255
      Left            =   1920
      TabIndex        =   3
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label3 
      Caption         =   "ECONOMICS"
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "ACCOUNTS"
      Height          =   255
      Left            =   1680
      TabIndex        =   1
      Top             =   1800
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "ENGLISH"
      Height          =   255
      Left            =   1800
      TabIndex        =   0
      Top             =   600
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text6.Text = Val(Text1.Text) + Val(Text2.Text) + Val(Text3.Text) + Val(Text4.Text) + Val(Text5.Text)

Y = Text6.Text / 500 * 100
Text7.Text = Y
If Y <= 100 And Y >= 90 Then
Text8.Text = "A+"
ElseIf Y < 90 And Y >= 80 Then
Text8.Text = "A"
ElseIf Y < 80 And Y >= 70 Then
Text8.Text = "B+"
ElseIf Y < 70 And Y >= 60 Then
Text8.Text = "B"
ElseIf Y < 60 And Y >= 45 Then
Text8.Text = "C+"
ElseIf Y < 45 And Y >= 40 Then
Text8.Text = "C"
ElseIf Y < 40 Then
Text8.Text = "FAIL"
End If
End Sub
