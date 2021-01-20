VERSION 5.00
Begin VB.Form Form7 
   BackColor       =   &H00000040&
   Caption         =   "About Owners"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form7"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "Exit The Project"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   7440
      TabIndex        =   11
      Top             =   5880
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Return To The Main Form "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   7440
      TabIndex        =   10
      Top             =   2640
      Width           =   1455
   End
   Begin VB.PictureBox Picture2 
      Height          =   6735
      Left            =   10320
      Picture         =   "Form7.frx":0000
      ScaleHeight     =   6675
      ScaleWidth      =   3315
      TabIndex        =   9
      Top             =   1560
      Width           =   3375
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00404080&
      Caption         =   "Pawan Kumar"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   11175
      Left            =   9120
      TabIndex        =   1
      Top             =   -120
      Width           =   6015
      Begin VB.Label Label6 
         Caption         =   "Contact No.  :  9716459664"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   10680
         Width           =   5775
      End
      Begin VB.Label Label4 
         Caption         =   "E-Mail ID : pawanagnihotri41@gmail.com"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   5
         Top             =   10320
         Width           =   5775
      End
      Begin VB.Label Label2 
         Caption         =   "Presently Pursuing BCA from Bharti Vidyapeeth Deemed University."
         BeginProperty Font 
            Name            =   "Chiller"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   120
         TabIndex        =   3
         Top             =   9360
         Width           =   5775
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00404080&
      Caption         =   "Rohit Sharma"
      BeginProperty Font 
         Name            =   "Chiller"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   11175
      Left            =   120
      TabIndex        =   0
      Top             =   -120
      Width           =   7095
      Begin VB.PictureBox Picture1 
         Height          =   8775
         Left            =   0
         Picture         =   "Form7.frx":3A80
         ScaleHeight     =   8715
         ScaleWidth      =   7035
         TabIndex        =   8
         Top             =   720
         Width           =   7095
      End
      Begin VB.Label Label5 
         Caption         =   "Contact No.  :  9999401240"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   10680
         Width           =   6855
      End
      Begin VB.Label Label3 
         Caption         =   "E-mail ID : rohitsharma2702@gmail.com"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   10320
         Width           =   6855
      End
      Begin VB.Label Label1 
         Caption         =   "Presently Pursuing BCA from Bharti Vidyapeeth Deemed University."
         BeginProperty Font 
            Name            =   "Chiller"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         TabIndex        =   2
         Top             =   9480
         Width           =   6855
      End
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form1.Show
Unload Me

End Sub

Private Sub Command2_Click()
If (MsgBox("Are You Sure You Want To Exit The Project ? ", vbYesNo, "Exit") = vbYes) Then
End
End If
End Sub
