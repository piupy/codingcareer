VERSION 5.00
Begin VB.Form Form21 
   Caption         =   "Form21"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form21"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get Your Cost"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2280
      TabIndex        =   1
      Top             =   2640
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Shipmen Cost Form(Using Select Case)"
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
      Left            =   600
      TabIndex        =   0
      Top             =   720
      Width           =   6975
   End
End
Attribute VB_Name = "Form21"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer

Private Sub Command1_Click()
a = InputBox("Enter The Number of Units")
Select Case a
Case 1 To 15
MsgBox "Price For Wholesalers Is  Rs.50"
MsgBox "Price For Retailers Is  Rs.60"
Case 16 To 20
MsgBox "Price For Wholesalers Is  Rs.45"
MsgBox "Price For Retailers Is  Rs.45"
End Select
End Sub
