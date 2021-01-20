VERSION 5.00
Begin VB.Form frm15 
   BackColor       =   &H80000013&
   Caption         =   "Traffic Lights"
   ClientHeight    =   6120
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7095
   LinkTopic       =   "Form1"
   ScaleHeight     =   6120
   ScaleWidth      =   7095
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdchange 
      Caption         =   "CHANGE "
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
      Left            =   4440
      TabIndex        =   1
      Top             =   5040
      Width           =   2175
   End
   Begin VB.Timer tmrlights 
      Left            =   2760
      Top             =   5160
   End
   Begin VB.Shape shpyellow 
      BackStyle       =   1  'Opaque
      Height          =   735
      Left            =   960
      Shape           =   3  'Circle
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Shape shp3 
      Height          =   1935
      Left            =   720
      Shape           =   3  'Circle
      Top             =   3960
      Width           =   1815
   End
   Begin VB.Shape shpgreen 
      BackStyle       =   1  'Opaque
      Height          =   735
      Left            =   960
      Shape           =   3  'Circle
      Top             =   4560
      Width           =   1335
   End
   Begin VB.Shape shp2 
      Height          =   1935
      Left            =   720
      Shape           =   3  'Circle
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Shape shpred 
      BackStyle       =   1  'Opaque
      Height          =   735
      Left            =   840
      Shape           =   3  'Circle
      Top             =   720
      Width           =   1335
   End
   Begin VB.Shape shp1 
      Height          =   1935
      Left            =   600
      Shape           =   3  'Circle
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label lblmessage 
      Alignment       =   2  'Center
      Caption         =   "STOP"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3720
      TabIndex        =   0
      Top             =   840
      Width           =   2535
   End
End
Attribute VB_Name = "frm15"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdchange_Click()
state = 1
shpred.BackColor = vbRed
shpyellow.BackColor = vbWhite
shpgreen.BackColor = vbWhite
lblmessage = "Stop"
End Sub

Private Sub tmrlights_Timer()
Dim state As Integer
If state = 3 Then
state = 1
Else
state = state + 1
End If
Select Case state
Case 1
shpred.BackColor = vbRed
shpyellow.BackColor = vbWhite
shpgreen.BackColor = vbWhite
lblmessage = "Stop"
tmrlights.Interval = 7000
Case 2
shpred.BackColor = vbWhite
shpyellow.BackColor = vbWhite
shpgreen.BackColor = vbGreen
lblmessage = "Go"
tmrlights.Interval = 7000
Case 3
shpred.BackColor = vbWhite
shpyellow.BackColor = vbYellow
shpgreen.BackColor = vbGreen
lblmessage = "Wait"
tmrlights.Interval = 2000
End Select
End Sub
