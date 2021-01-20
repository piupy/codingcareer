VERSION 5.00
Begin VB.Form Form27 
   Caption         =   "Checkbox"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form27"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Verify Your Details"
      Height          =   975
      Left            =   4200
      TabIndex        =   9
      Top             =   5400
      Width           =   2655
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Punjabi"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   360
      TabIndex        =   8
      Top             =   5280
      Width           =   2775
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Hindi"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3960
      TabIndex        =   7
      Top             =   4440
      Width           =   2655
   End
   Begin VB.CheckBox Check1 
      Caption         =   "English"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   6
      Top             =   4440
      Width           =   2535
   End
   Begin VB.TextBox Text2 
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
      Left            =   3720
      TabIndex        =   4
      Top             =   2400
      Width           =   2775
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3600
      TabIndex        =   2
      Top             =   1200
      Width           =   2775
   End
   Begin VB.Label Label4 
      Caption         =   "Enter The Languages You Know"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   5
      Top             =   3600
      Width           =   4695
   End
   Begin VB.Label Label3 
      Caption         =   "Enter Your Age"
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
      Left            =   240
      TabIndex        =   3
      Top             =   2400
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "Enter Your Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   1
      Top             =   1320
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Checkbox"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3960
      TabIndex        =   0
      Top             =   240
      Width           =   3015
   End
End
Attribute VB_Name = "Form27"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As Integer

Private Sub Command1_Click()
a = Text1.Text
b = Text2.Text
If Check1.Value = True Then
MsgBox "You Know English"
ElseIf Check2.Value = True Then
MsgBox "You Know Hindi"
ElseIf Check3.Value = True Then
MsgBox "You Know Punjabi"
ElseIf Check1.Value = True And Check2.Value = True Then
MsgBox "You Know English and Hindi"
ElseIf Check2.Value = True And Check3.Value = True Then
MsgBox "You Know Hindi and Punjabi"
ElseIf Check1.Value = True And Check3.Value = True Then
MsgBox "You Know English and Punjabi"
ElseIf Check1.Value = True And Check2.Value = True And Check3.Value = True Then
MsgBox "You Know English,Hindi and Punjabi"
End If
End Sub
