VERSION 5.00
Begin VB.Form frm13 
   Caption         =   "Little Quiz Master"
   ClientHeight    =   6300
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7110
   LinkTopic       =   "Form1"
   ScaleHeight     =   6300
   ScaleWidth      =   7110
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton optNPur 
      Caption         =   "Nagpur"
      Height          =   495
      Left            =   5160
      TabIndex        =   20
      Top             =   5160
      UseMaskColor    =   -1  'True
      Width           =   1695
   End
   Begin VB.OptionButton optUPur 
      Caption         =   "Udaipur"
      Height          =   495
      Left            =   5160
      TabIndex        =   19
      Top             =   4680
      UseMaskColor    =   -1  'True
      Width           =   1695
   End
   Begin VB.OptionButton optJPur 
      Caption         =   "Jaipur"
      Height          =   495
      Left            =   5160
      TabIndex        =   18
      Top             =   4200
      UseMaskColor    =   -1  'True
      Width           =   1695
   End
   Begin VB.OptionButton optSGanguli 
      Caption         =   "Saurav Ganguli"
      Height          =   495
      Left            =   360
      TabIndex        =   17
      Top             =   5160
      UseMaskColor    =   -1  'True
      width           =   1695
   End
   Begin VB.OptionButton optKDev 
      Caption         =   "Kapil Dev"
      Height          =   495
      Left            =   360
      TabIndex        =   16
      Top             =   4680
      UseMaskColor    =   -1  'True
      Width           =   1695
   End
   Begin VB.OptionButton optMAjhar 
      Caption         =   "M. Ajharuddin"
      Height          =   495
      Left            =   360
      TabIndex        =   15
      Top             =   4200
      UseMaskColor    =   -1  'True
      Width           =   1695
   End
   Begin VB.OptionButton optEngland 
      Caption         =   "England"
      Height          =   495
      Left            =   5160
      TabIndex        =   14
      Top             =   2160
      UseMaskColor    =   -1  'True
      Width           =   1695
   End
   Begin VB.OptionButton optIndia 
      Caption         =   "India"
      Height          =   495
      Left            =   5160
      TabIndex        =   13
      Top             =   1680
      UseMaskColor    =   -1  'True
      Width           =   1695
   End
   Begin VB.OptionButton optWIndies 
      Caption         =   "West Indies"
      Height          =   495
      Left            =   5160
      TabIndex        =   12
      Top             =   1200
      UseMaskColor    =   -1  'True
      Width           =   1695
   End
   Begin VB.OptionButton optMGandhi 
      Caption         =   "Mahatma Ghandhi"
      Height          =   495
      Left            =   240
      TabIndex        =   11
      Top             =   2160
      UseMaskColor    =   -1  'True
      Width           =   1575
   End
   Begin VB.OptionButton optDrRPrasad 
      Caption         =   "Dr. Rajendra Prasad"
      Height          =   495
      Left            =   240
      TabIndex        =   10
      Top             =   1680
      UseMaskColor    =   -1  'True
      Width           =   1575
   End
   Begin VB.OptionButton optJNehru 
      Caption         =   "Jawahar Lal Nehru"
      CausesValidation=   0   'False
      Height          =   495
      Left            =   240
      TabIndex        =   9
      Top             =   1200
      UseMaskColor    =   -1  'True
      Width           =   1455
   End
   Begin VB.Frame fraQ4 
      Height          =   1935
      Left            =   4920
      TabIndex        =   8
      Top             =   3840
      Width           =   2055
   End
   Begin VB.Frame fraQ3 
      Height          =   1935
      Left            =   120
      TabIndex        =   7
      Top             =   3840
      Width           =   2055
   End
   Begin VB.Frame fraQ2 
      Height          =   1935
      Left            =   4920
      TabIndex        =   6
      Top             =   840
      Width           =   2055
   End
   Begin VB.Frame fraQ1 
      Height          =   1935
      Left            =   120
      TabIndex        =   5
      Top             =   840
      Width           =   1815
   End
   Begin VB.CommandButton cmdscore 
      Caption         =   "SCORE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2880
      TabIndex        =   4
      Top             =   5640
      Width           =   1455
   End
   Begin VB.Label lblques4 
      Caption         =   "Which City Is Called Pink City ?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4080
      TabIndex        =   3
      Top             =   3120
      Width           =   2895
   End
   Begin VB.Label lblques3 
      Caption         =   "Most Successful Captain Of Indian Cricket Tenis ?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   3120
      Width           =   2895
   End
   Begin VB.Label lblques2 
      Caption         =   "Steve Waugh Played His Last Test Match Against ?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4080
      TabIndex        =   1
      Top             =   120
      Width           =   2895
   End
   Begin VB.Label lblques1 
      Caption         =   "The First President Of India ?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   2895
   End
End
Attribute VB_Name = "frm13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim answers As Integer
Dim correctanswers As Integer
Private Sub cmdscore_Click()
answers = 0
correctanswers = 0
If (optJNehru.Value = True) Xor (optDrRPrasad.Value = True) Xor (optMGandhi.Value = True) Then
answers = answers + 1
End If
If (optWIndies.Value = True) Xor (optIndia.Value = True) Xor (optEngland.Value = True) Then
answers = answers + 1
End If
If (optMAjhar.Value = True) Xor (optKDev.Value = True) Xor (optSGanguli.Value = True) Then
answers = answers + 1
End If
If (optJPur.Value = True) Xor (optUPur.Value = True) Xor (optNPur.Value = True) Then
answers = answers + 1
End If
If answers < 4 Then
MsgBox "Answer All The Questions!"
Exit Sub
End If
If optDrRPrasad.Value = True Then
correctanswers = correctanswers + 1
End If
If optIndia.Value = True Then
correctanswers = correctanswers + 1
End If
If optSGanguli.Value = True Then
correctanswers = correctanswers + 1
End If
If optJPur.Value = True Then
correctanswers = correctanswers + 1
End If
If correctanswers = 0 Then
MsgBox "0 out of 4: What A Disaster!"
ElseIf correctanswers = 1 Then
MsgBox "1 out of 4: You Need More Study!"
ElseIf correctanswers = 2 Then
MsgBox "2 out of 4: You Need Scored 50%!"
ElseIf correctanswers = 3 Then
MsgBox "3 out of 4: You Are Almost There!"
ElseIf correctanswers = 4 Then
MsgBox "4 out of 4: Wow! We Have A Genius!"
End If
End Sub


