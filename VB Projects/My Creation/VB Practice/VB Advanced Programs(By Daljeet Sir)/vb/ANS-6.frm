VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5640
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7575
   LinkTopic       =   "Form1"
   ScaleHeight     =   5640
   ScaleWidth      =   7575
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "EXIT"
      Height          =   495
      Left            =   5880
      TabIndex        =   13
      Top             =   5040
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "REFRESH"
      Height          =   495
      Left            =   3960
      TabIndex        =   12
      Top             =   5040
      Width           =   1815
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   4560
      TabIndex        =   11
      Top             =   3360
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CALCULATE SIMPLE INTREST"
      Height          =   615
      Left            =   2040
      TabIndex        =   6
      Top             =   2520
      Width           =   3135
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   4200
      TabIndex        =   5
      Top             =   1440
      Width           =   1455
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   4200
      TabIndex        =   4
      Top             =   840
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   4200
      TabIndex        =   3
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label Label7 
      Caption         =   "INTREST AMOUNT="
      Height          =   255
      Left            =   2760
      TabIndex        =   10
      Top             =   3480
      Width           =   1575
   End
   Begin VB.Label Label6 
      Caption         =   "Yrs.."
      Height          =   255
      Left            =   5760
      TabIndex        =   9
      Top             =   1680
      Width           =   375
   End
   Begin VB.Label Label5 
      Caption         =   "%"
      Height          =   255
      Left            =   5760
      TabIndex        =   8
      Top             =   1080
      Width           =   255
   End
   Begin VB.Label Label4 
      Caption         =   "Rs..."
      Height          =   255
      Left            =   5760
      TabIndex        =   7
      Top             =   480
      Width           =   375
   End
   Begin VB.Label Label3 
      Caption         =   "PLEASE ENTER THE TIME"
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   1560
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "PLEASE PROVIDE THE RATE OF INTREST"
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   960
      Width           =   3255
   End
   Begin VB.Label Label1 
      Caption         =   "ENTER THE PRINCIPLE AMOUNT"
      Height          =   255
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   2655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim Z As Variant, X As Variant, C As Variant, V As Variant
Z = Text1.Text
X = Text2.Text
C = Text3.Text
V = Z * X * C / 100
Text4.Text = V

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
