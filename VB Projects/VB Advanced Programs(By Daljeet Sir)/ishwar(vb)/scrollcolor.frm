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
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   735
      Left            =   3720
      TabIndex        =   5
      Top             =   5520
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Reset"
      Height          =   735
      Left            =   840
      TabIndex        =   4
      Top             =   5520
      Width           =   1935
   End
   Begin VB.HScrollBar HScroll3 
      Height          =   495
      Left            =   2520
      Max             =   255
      TabIndex        =   3
      Top             =   4080
      Width           =   2415
   End
   Begin VB.HScrollBar HScroll2 
      Height          =   495
      Left            =   4200
      Max             =   255
      TabIndex        =   2
      Top             =   2760
      Width           =   2295
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   495
      Left            =   600
      Max             =   255
      TabIndex        =   1
      Top             =   2760
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H000000C0&
      Height          =   1215
      Left            =   1440
      TabIndex        =   0
      Top             =   480
      Width           =   4815
   End
   Begin VB.Label Label3 
      Caption         =   "BLUE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   375
      Left            =   3000
      TabIndex        =   8
      Top             =   3600
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "GREEN"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   375
      Left            =   4800
      TabIndex        =   7
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "RED"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   375
      Left            =   1080
      TabIndex        =   6
      Top             =   2280
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, b, c As Integer

Private Sub Command1_Click()
    a = 0
    b = 0
    c = 0
    Text1.BackColor = RGB(a, b, c)
    HScroll1.Value = 0
    HScroll2.Value = 0
    HScroll3.Value = 0
End Sub

Private Sub Command2_Click()
    End
End Sub



Private Sub HScroll1_Change()
    a = HScroll1.Value
    Text1.BackColor = RGB(a, b, c)
End Sub

Private Sub HScroll2_Change()
    b = HScroll2.Value
    Text1.BackColor = RGB(a, b, c)
End Sub

Private Sub HScroll3_Change()
    c = HScroll3.Value
    Text1.BackColor = RGB(a, b, c)
End Sub
