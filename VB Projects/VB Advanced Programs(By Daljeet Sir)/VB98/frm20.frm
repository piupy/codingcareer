VERSION 5.00
Begin VB.Form frm20 
   Caption         =   "Match Country And Its Capitals"
   ClientHeight    =   6225
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7170
   LinkTopic       =   "Form1"
   ScaleHeight     =   6225
   ScaleWidth      =   7170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdexit 
      Caption         =   "E&XIT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5880
      TabIndex        =   5
      Top             =   5640
      Width           =   1095
   End
   Begin VB.CommandButton cmdok 
      Caption         =   "O&K"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2280
      TabIndex        =   4
      Top             =   5160
      width           =   2175
   End
   Begin VB.ListBox lstcapitals 
      Height          =   2595
      Left            =   4560
      TabIndex        =   3
      Top             =   1800
      Width           =   2055
   End
   Begin VB.ListBox lstcountries 
      Height          =   2595
      Left            =   480
      TabIndex        =   2
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label lblcapitals 
      Caption         =   "Select Its Capital City"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4560
      TabIndex        =   1
      Top             =   600
      Width           =   2055
   End
   Begin VB.Label lblcountries 
      Caption         =   "Select A Contries "
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
      Left            =   480
      TabIndex        =   0
      Top             =   600
      Width           =   1935
   End
End
Attribute VB_Name = "frm20"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim countries(1 To 6) As String
Dim capitals(1 To 6) As String
Private Sub cmdexit_Click()
End
End Sub

Private Sub cmdok_Click()
Dim countrynumber As Integer
Dim selectedcapital As String
countrynumber = lstcountries.ListIndex + 1
selectedcapital = lstcapitals.Text
If capitals(countrynumber) = selectedcapital Then
MsgBox ("Good! Correct Answer")
Else
MsgBox ("Incorrect Answer. The Capital Is " & capitals(countrynumber))
End If
End Sub
Private Sub Form_Load()
Dim index As Integer
countries(1) = "England"
capitals(1) = "London"
countries(2) = "France"
capitals(2) = "Paris"
countries(3) = "USA"
capitals(3) = "Washington"
countries(4) = "Norway"
capitals(4) = "Oslo"
countries(5) = "Egypt"
capitals(5) = "Cairo"
countries(6) = "Japan"
capitals(6) = "Tokyo"
For index = 1 To 6
lstcountries.AddItem countries(index)
lstcapitals.AddItem capitals(index)
Next index
End Sub
