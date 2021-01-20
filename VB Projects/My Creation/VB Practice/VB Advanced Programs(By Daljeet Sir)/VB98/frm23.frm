VERSION 5.00
Begin VB.Form frm23 
   Caption         =   "Number Of Days In A Month"
   ClientHeight    =   6240
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7125
   LinkTopic       =   "Form1"
   ScaleHeight     =   6240
   ScaleWidth      =   7125
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmddays 
      Caption         =   "DAYS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2520
      TabIndex        =   3
      Top             =   4800
      Width           =   2535
   End
   Begin VB.TextBox txtmonth 
      Height          =   975
      Left            =   3360
      TabIndex        =   2
      Top             =   1320
      Width           =   3015
   End
   Begin VB.Label lbldays 
      Caption         =   "Days"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label lblmonth 
      Caption         =   "Month"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1200
      TabIndex        =   0
      Top             =   1080
      Width           =   1215
   End
End
Attribute VB_Name = "frm23"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmddays_Click()
Dim numdays As Integer
Mnth = Val(txtmonth.Text)
Select Case Mnth
Case 4, 6, 9, 11
numdays = 30
Case 2
If Year(Now) Mod 4 = 0 Then
numdays = 29
Else
numdays = 28
End If
Case Else
numdays = 31
End Select
DaysInMonth = numdays
lbldays.Caption = Str(DaysInMonth)
End Sub
