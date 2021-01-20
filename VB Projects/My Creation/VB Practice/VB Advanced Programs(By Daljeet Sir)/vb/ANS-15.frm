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
      Left            =   2520
      TabIndex        =   2
      Top             =   1800
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CONVERT INTO WHOLE NUMBER"
      Height          =   495
      Left            =   840
      TabIndex        =   1
      Top             =   1080
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   2520
      TabIndex        =   0
      Top             =   360
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "THE WHOLE NUMBER IS:-"
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   1920
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "ENTER FRACTIONAL UNIT"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim x As Integer
Dim INVT As Integer
x = Text1.Text
INVT = FNC(x)
Text2.Text = INVT
End Sub


Private Function FNC(x As Integer) As Integer
FNC = Int(x)
End Function
