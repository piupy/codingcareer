VERSION 5.00
Begin VB.Form frmNormalUser 
   Caption         =   "User"
   ClientHeight    =   6360
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9135
   LinkTopic       =   "Form2"
   ScaleHeight     =   6360
   ScaleWidth      =   9135
   StartUpPosition =   2  'CenterScreen
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdexit 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3840
      TabIndex        =   2
      Top             =   6360
      Width           =   1575
   End
   Begin VB.CommandButton cmdok 
      Caption         =   "O.K."
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   6360
      Width           =   1575
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Book Your Show"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      TabIndex        =   0
      Top             =   3480
      Width           =   4215
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "User-Panel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   1
      Left            =   2760
      TabIndex        =   4
      Top             =   2160
      Width           =   2025
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Movie-Fully Entertainment Show"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Index           =   0
      Left            =   960
      TabIndex        =   3
      Top             =   840
      Width           =   5385
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   4
      Height          =   1215
      Left            =   480
      Shape           =   4  'Rounded Rectangle
      Top             =   480
      Width           =   7215
   End
   Begin VB.Line Line1 
      BorderWidth     =   10
      X1              =   600
      X2              =   600
      Y1              =   2160
      Y2              =   5520
   End
   Begin VB.Line Line2 
      BorderWidth     =   10
      X1              =   0
      X2              =   0
      Y1              =   0
      Y2              =   3360
   End
   Begin VB.Line Line3 
      BorderWidth     =   10
      X1              =   7320
      X2              =   7320
      Y1              =   2160
      Y2              =   5520
   End
End
Attribute VB_Name = "frmNormalUser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Option2_Click()
frmBill.Show
End Sub
