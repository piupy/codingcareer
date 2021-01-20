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
   Begin VB.CommandButton cmdequal 
      Caption         =   "="
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
      Left            =   4800
      TabIndex        =   18
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton cmdnegative 
      Caption         =   "+/-"
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
      Left            =   3840
      TabIndex        =   17
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton cmdmul 
      Caption         =   "*"
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
      Left            =   4800
      TabIndex        =   16
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton mddiv 
      Caption         =   "/"
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
      Left            =   3840
      TabIndex        =   15
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmdminus 
      Caption         =   "-"
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
      Left            =   4800
      TabIndex        =   14
      Top             =   1560
      Width           =   735
   End
   Begin VB.CommandButton cmdplus 
      Caption         =   "+"
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
      Left            =   3840
      TabIndex        =   13
      Top             =   1560
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "."
      Height          =   735
      Index           =   10
      Left            =   1800
      TabIndex        =   12
      Top             =   4440
      Width           =   735
   End
   Begin VB.CommandButton cmdac 
      Caption         =   "ac"
      Height          =   735
      Left            =   2760
      TabIndex        =   11
      Top             =   4440
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "0"
      Height          =   735
      Index           =   9
      Left            =   840
      TabIndex        =   10
      Top             =   4440
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "9"
      Height          =   735
      Index           =   8
      Left            =   2760
      TabIndex        =   9
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "8"
      Height          =   735
      Index           =   7
      Left            =   1800
      TabIndex        =   8
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "7"
      Height          =   735
      Index           =   6
      Left            =   840
      TabIndex        =   7
      Top             =   3480
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "6"
      Height          =   735
      Index           =   5
      Left            =   2760
      TabIndex        =   6
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "5"
      Height          =   735
      Index           =   4
      Left            =   1800
      TabIndex        =   5
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "4"
      Height          =   735
      Index           =   3
      Left            =   840
      TabIndex        =   4
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "3"
      Height          =   735
      Index           =   2
      Left            =   2760
      TabIndex        =   3
      Top             =   1560
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "2"
      Height          =   735
      Index           =   1
      Left            =   1800
      TabIndex        =   2
      Top             =   1560
      Width           =   735
   End
   Begin VB.CommandButton cmd 
      Caption         =   "1"
      Height          =   735
      Index           =   0
      Left            =   840
      TabIndex        =   1
      Top             =   1560
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   480
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim curval As Double
Dim preval As Double
Dim choice As String
Dim result As String

Private Sub cmd_Click(Index As Integer)
    Text1.Text = Text1.Text & cmd(Index).Caption
    curval = Val(Text1.Text)
End Sub


Private Sub cmdac_Click()
    curval = preval = 0
    Text1.Text = ""
End Sub

Private Sub cmdequal_Click()
    Select Case choice
        Case "+"
            result = preval + curval
            Text1.Text = Str(result)
        Case "-"
            result = preval - curval
            Text1.Text = Str(result)
        Case "*"
            result = preval * curval
            Text1.Text = Str(result)
        Case "/"
            result = preval / curval
            Text1.Text = Str(result)
    End Select
    curval = result
End Sub

Private Sub cmdminus_Click()
    Text1.Text = ""
    preval = curval
    curval = 0
    choice = "-"
End Sub

Private Sub cmdmul_Click()
    Text1.Text = ""
    preval = curval
    curval = 0
    choice = "*"
End Sub

Private Sub cmdplus_Click()
    Text1.Text = ""
    preval = curval
    curval = 0
    choice = "+"
End Sub

Private Sub mddiv_Click()
    Text1.Text = ""
    preval = curval
    curval = 0
    choice = "/"
End Sub
