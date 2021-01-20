VERSION 5.00
Begin VB.Form frm17 
   Caption         =   "Count Total Numbers Of Even And  Odd Numbers"
   ClientHeight    =   6390
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7080
   LinkTopic       =   "Form1"
   ScaleHeight     =   6390
   ScaleWidth      =   7080
   StartUpPosition =   3  'Windows Default
   Begin VB.Label lbleven 
      Height          =   615
      Left            =   4440
      TabIndex        =   3
      Top             =   960
      Width           =   1935
   End
   Begin VB.Label lblodd 
      Height          =   615
      Left            =   4440
      TabIndex        =   2
      Top             =   4080
      Width           =   1935
   End
   Begin VB.Label lbl2 
      Caption         =   "Total Odd Number Entered"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   1
      Top             =   4080
      Width           =   2055
   End
   Begin VB.Label lbl1 
      Caption         =   "Total Even Number Entered"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   600
      TabIndex        =   0
      Top             =   960
      Width           =   2175
   End
End
Attribute VB_Name = "frm17"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Dim number As Integer
Dim even As Integer
Dim odd As Integer
even = 0
odd = 0
number = InputBox("Enter A number. Enter 0 To Quit")
Do While number <> 0
If (number Mod 2) = 0 Then
even = even + 1
Else
odd = odd + 1
End If
number = InputBox("Enter A Number. Enter 0 To Quit")
Loop
frm17.Show
lbleven.Caption = even
lblodd.Caption = odd
End Sub
