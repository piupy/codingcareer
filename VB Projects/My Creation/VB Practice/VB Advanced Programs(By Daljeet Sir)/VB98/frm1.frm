VERSION 5.00
Begin VB.Form frm1 
   Caption         =   "Selecting A Device"
   ClientHeight    =   6090
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7050
   LinkTopic       =   "Form1"
   ScaleHeight     =   6090
   ScaleWidth      =   7050
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdshowdetails 
      Caption         =   "SHOW DETAILS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   5400
      TabIndex        =   5
      Top             =   2640
      width           =   1575
   End
   Begin VB.OptionButton optPrinter 
      Caption         =   "Printer"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   4
      Top             =   4440
      Width           =   1215
   End
   Begin VB.OptionButton optMoniter 
      Caption         =   "Moniter"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   3
      Top             =   3360
      Width           =   1215
   End
   Begin VB.OptionButton optMouse 
      Caption         =   "Mouse"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   2
      Top             =   2280
      Width           =   1215
   End
   Begin VB.OptionButton optKeyboard 
      Caption         =   "Keyboard"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   1200
      width           =   1215
   End
   Begin VB.Frame frm1 
      Caption         =   "SELECT A DEVICE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5535
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   5175
   End
End
Attribute VB_Name = "frm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd1_Click()

End Sub

Private Sub cmdshowdetails_Click()
If optKeyboard.Value = True Then
MsgBox ("An Input Device Is Used To Type And Enter Data")
ElseIf optMouse.Value = True Then
MsgBox ("An Input Device Is Used For Clicking Various Things")
ElseIf optMoniter.Value = True Then
MsgBox ("An Output Device Is Used To Display Data")
ElseIf optPrinter.Value = True Then
MsgBox ("An Output Device Is Used To Print Data")
End If
End Sub

