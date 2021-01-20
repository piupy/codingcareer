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
   Begin VB.CommandButton Command1 
      Caption         =   "Show details"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4800
      TabIndex        =   6
      Top             =   2880
      Width           =   2175
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      BackColor       =   &H8000000E&
      Height          =   540
      Left            =   5040
      Picture         =   "selectdevice.frx":0000
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   5
      Top             =   600
      Width           =   540
   End
   Begin VB.Frame fraselect 
      Caption         =   "Select a Device"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4575
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   3615
      Begin VB.OptionButton Option4 
         Caption         =   "Phone"
         Height          =   615
         Left            =   240
         TabIndex        =   4
         Top             =   3240
         Width           =   2295
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Monitor"
         Height          =   495
         Left            =   240
         TabIndex        =   3
         Top             =   2280
         Width           =   2415
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Mouse"
         Height          =   375
         Left            =   240
         Picture         =   "selectdevice.frx":0442
         TabIndex        =   2
         Top             =   1440
         Width           =   2415
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Keyboard"
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   720
         Value           =   -1  'True
         Width           =   2415
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Select Case True
        Case Option1.Value:
            MsgBox ("An input device used to type and enter data")
        Case Option2.Value:
            MsgBox ("An input device used for clicking various things")
        Case Option3.Value
            MsgBox ("An output device used to display data")
        Case Option4.Value
            MsgBox ("A device used for communication purpose")
    End Select
End Sub

Private Sub Option1_Click()
    Picture1.Picture = LoadPicture("d:\vb98\ishwar\keyboard.ico")
    
End Sub

Private Sub Option2_Click()
    Picture1.Picture = LoadPicture("d:\vb98\ishwar\mouse.ico")
End Sub

Private Sub Option3_Click()
    Picture1 = LoadPicture("d:\vb98\ishwar\monitor.ico")
End Sub

Private Sub Option4_Click()
    Picture1 = LoadPicture("d:\vb98\ishwar\phone.ico")
End Sub
