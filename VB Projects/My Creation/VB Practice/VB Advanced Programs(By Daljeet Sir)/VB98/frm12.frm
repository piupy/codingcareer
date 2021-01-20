VERSION 5.00
Begin VB.Form frm12 
   Caption         =   "Temperature Test"
   ClientHeight    =   6195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7215
   LinkTopic       =   "Form1"
   ScaleHeight     =   6195
   ScaleWidth      =   7215
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdexit 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5640
      TabIndex        =   4
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton cmdcelsius 
      Caption         =   "Celsius"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   3
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton cmdfahrenheit 
      Caption         =   "Fahrenheit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   2
      Top             =   5160
      Width           =   1335
   End
   Begin VB.TextBox txttemp 
      Height          =   735
      Left            =   4800
      TabIndex        =   1
      Text            =   "0"
      Top             =   600
      Width           =   2175
   End
   Begin VB.Label lblresult 
      Height          =   2175
      Left            =   240
      TabIndex        =   5
      Top             =   2040
      Width           =   6735
   End
   Begin VB.Label lbltemp 
      Alignment       =   2  'Center
      Caption         =   "TEMPERATURE"
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
      TabIndex        =   0
      Top             =   600
      Width           =   2775
   End
End
Attribute VB_Name = "frm12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim inttemp As Integer
Dim intfreezing As Integer
Dim strfreezing As String
Dim strnotfreezing As String

Private Sub cmdcelsius_Click()
If (inttemp > 0) Then
lblresult.Caption = strnotfreezing
Else
lblresult.Caption = strfreezing
End If
End Sub

Private Sub cmdexit_Click()
blnexit = (MsgBox("Do You Really Want To Exit", vbYesNo) = vbYes)
If blnexit = True Then
End
End If
End Sub

Private Sub cmdfahrenheit_Click()
If (inttemp > 32) Then
lblresult.Caption = strnotfreezing
Else
lblresult.Caption = strfreezing
End If
End Sub

Private Sub Form_Load()
strfreezing = "This Temperature Is Freezing"
strnotfreezing = "This Temperature Is Not Freezing"
End Sub

Private Sub txttemp_Change()
inttemp = Val(txttemp.Text)
End Sub
