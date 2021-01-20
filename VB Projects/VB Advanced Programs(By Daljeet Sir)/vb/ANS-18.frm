VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   5985
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7215
   LinkTopic       =   "Form1"
   ScaleHeight     =   5985
   ScaleWidth      =   7215
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "EXIT"
      Height          =   495
      Left            =   2640
      TabIndex        =   8
      Top             =   3960
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "REFRESH"
      Height          =   495
      Left            =   600
      TabIndex        =   7
      Top             =   3960
      Width           =   1935
   End
   Begin VB.TextBox Text4 
      BackColor       =   &H8000000D&
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   4560
      TabIndex        =   5
      Top             =   2640
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "THE BIGGEST AMONG THESE 3 NO.S IS....."
      Height          =   375
      Left            =   600
      TabIndex        =   4
      Top             =   2640
      Width           =   3975
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H8000000D&
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   4800
      TabIndex        =   2
      Top             =   1200
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H8000000D&
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   2640
      TabIndex        =   1
      Top             =   1200
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H8000000D&
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "             X                                             Y                                               Z"
      Height          =   255
      Left            =   600
      TabIndex        =   6
      Top             =   1800
      Width           =   5655
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000018&
      Caption         =   "             ENTER ANY 3 NOS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   3
      Top             =   360
      Width           =   5775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim X As Variant, Y As Variant, Z As Variant
X = Text1.Text
Y = Text2.Text
Z = Text3.Text
If X > Y And X > Z Then
MsgBox ("X IS GREATEST")
Text4.Text = X
ElseIf Y > X And Y > Z Then
MsgBox ("Y IS GREATEST")
Text4.Text = Y
Else
MsgBox ("Z IS GREATEST")
Text4.Text = Z
End If
End Sub

Private Sub Command2_Click()
 Text1.Text = ""
 Text2.Text = ""
 Text3.Text = ""
 Text4.Text = ""
End Sub

Private Sub Command3_Click()
End
End Sub
