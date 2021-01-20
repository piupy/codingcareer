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
      Caption         =   "Clear"
      Height          =   495
      Left            =   4440
      TabIndex        =   16
      Top             =   6960
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Submit"
      Height          =   495
      Left            =   1080
      TabIndex        =   15
      Top             =   6960
      Width           =   1695
   End
   Begin VB.CheckBox Check4 
      Caption         =   "Writing"
      Height          =   495
      Left            =   5160
      TabIndex        =   14
      Top             =   5640
      Width           =   1335
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Reading"
      Height          =   375
      Left            =   3480
      TabIndex        =   13
      Top             =   5640
      Width           =   1455
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Painting"
      Height          =   495
      Left            =   5160
      TabIndex        =   12
      Top             =   4560
      Width           =   1215
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Music"
      Height          =   375
      Left            =   3480
      TabIndex        =   11
      Top             =   4680
      Width           =   1335
   End
   Begin VB.ListBox List1 
      Height          =   255
      ItemData        =   "applicationform.frx":0000
      Left            =   3720
      List            =   "applicationform.frx":0010
      TabIndex        =   10
      Top             =   3600
      Width           =   2415
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "applicationform.frx":0038
      Left            =   3720
      List            =   "applicationform.frx":004E
      TabIndex        =   9
      Text            =   "B.A."
      Top             =   2640
      Width           =   2415
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Female"
      Height          =   375
      Left            =   5280
      TabIndex        =   8
      Top             =   1800
      Width           =   1095
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Male"
      Height          =   375
      Left            =   3720
      TabIndex        =   7
      Top             =   1800
      Value           =   -1  'True
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   3720
      MaxLength       =   40
      TabIndex        =   6
      Top             =   960
      Width           =   2535
   End
   Begin VB.Label Label6 
      Caption         =   "Hobbies"
      Height          =   375
      Left            =   840
      TabIndex        =   5
      Top             =   4800
      Width           =   1695
   End
   Begin VB.Label Label5 
      Caption         =   "Post Applied For"
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   3600
      Width           =   1695
   End
   Begin VB.Label Label4 
      Caption         =   "Qualification"
      Height          =   255
      Left            =   840
      TabIndex        =   3
      Top             =   2760
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "Sex"
      Height          =   255
      Left            =   840
      TabIndex        =   2
      Top             =   1920
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Name"
      Height          =   255
      Left            =   840
      TabIndex        =   1
      Top             =   1080
      Width           =   1575
   End
   Begin VB.Line Line5 
      X1              =   480
      X2              =   6960
      Y1              =   6480
      Y2              =   6480
   End
   Begin VB.Line Line4 
      X1              =   6960
      X2              =   6960
      Y1              =   480
      Y2              =   6480
   End
   Begin VB.Line Line3 
      X1              =   480
      X2              =   480
      Y1              =   480
      Y2              =   6480
   End
   Begin VB.Line Line2 
      X1              =   5280
      X2              =   6960
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Line Line1 
      X1              =   480
      X2              =   2040
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Application Form"
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
      Left            =   2160
      TabIndex        =   0
      Top             =   240
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    MsgBox (Text1.Text & " your data for the post of " & List1.Text & " has been submitted")
End Sub

Private Sub Command2_Click()
    Text1.Text = ""
    Option1.Value = True
    Combo1.Text = "B.A."
    Check1.Value = False
    Check2.Value = False
    Check3.Value = False
    Check4.Value = False
End Sub
