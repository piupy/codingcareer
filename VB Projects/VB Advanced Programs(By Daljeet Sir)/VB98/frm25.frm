VERSION 5.00
Begin VB.Form frm25 
   Caption         =   "A Membership Cost For A Person According To His / Her Age"
   ClientHeight    =   6210
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7125
   LinkTopic       =   "Form1"
   ScaleHeight     =   6210
   ScaleWidth      =   7125
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdcost 
      Caption         =   "CALULATE MEMBERSHIP COST"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   0
      Top             =   5160
      Width           =   6615
   End
   Begin VB.Label lblcost 
      Height          =   495
      Left            =   4920
      TabIndex        =   4
      Top             =   2880
      Width           =   1455
   End
   Begin VB.Label lblcategory 
      Height          =   375
      Left            =   4800
      TabIndex        =   3
      Top             =   1440
      width           =   1575
   End
   Begin VB.Label lbl2 
      Caption         =   "Membership Cost"
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
      TabIndex        =   2
      Top             =   2880
      Width           =   2775
   End
   Begin VB.Label lbl1 
      Caption         =   "Membership Category"
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
      TabIndex        =   1
      Top             =   1320
      Width           =   2775
   End
End
Attribute VB_Name = "frm25"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdcost_Click()
Dim age As Integer, yearsjoined As Integer
Dim cost As Currency, category As String
age = InputBox("How Many Years Has This Person Been A Member ?")
Select Case age
Case Is <= 18
category = "Junior"
If yearsjoined >= 2 Then
cost = 400
Else
cost = 600
End If
Case 19 To 49
category = "Senior"
If yearsjoined >= 10 Then
cost = 500
Else
cost = 1200
End If
Case Else
category = "Veteran"
If yearsjoined >= 10 Then
cost = 500
Else
cost = 800
End If
End Select
lblcategory.Caption = category
lblcost.Caption = "Rs." & Format(cost, "##, ##, ###.00")
lbl1.Visible = True
lbl2.Visible = True
lblcategory.Visible = True
lblcost.Visible = True
End Sub

Private Sub Form_Load()
lbl1.Visible = False
lbl2.Visible = False
lblcategory.Visible = False
lblcost.Visible = False
End Sub
