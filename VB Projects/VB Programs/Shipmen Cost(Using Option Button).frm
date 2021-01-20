VERSION 5.00
Begin VB.Form Form23 
   Caption         =   "Form23"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form23"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get Your Shipmen Cost"
      Height          =   1095
      Left            =   4800
      TabIndex        =   4
      Top             =   3000
      Width           =   2295
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Units 21-30"
      Height          =   615
      Left            =   600
      TabIndex        =   3
      Top             =   4440
      Width           =   2415
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Units 16-20"
      Height          =   615
      Left            =   600
      TabIndex        =   2
      Top             =   3360
      Width           =   2295
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Units 1-15"
      Height          =   735
      Left            =   600
      TabIndex        =   1
      Top             =   2160
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "Shipmen Cost(Using Option Button)"
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
      Left            =   960
      TabIndex        =   0
      Top             =   600
      Width           =   6255
   End
End
Attribute VB_Name = "Form23"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
If Option1.Value = True Then
MsgBox "The Price For Wholesalers Is Rs.50"
MsgBox "The Price For Retailers Is Rs.60"
ElseIf Option2.Value = True Then
MsgBox "The Price For Wholesalers Is Rs.45"
MsgBox "The Price For Reatailers Is Rs.55"
ElseIf Option3.Value = True Then
MsgBox "The Price For Wholesalers Is Rs.40"
MsgBox "The Price For Retailers Is Rs.50"
End If
End Sub
