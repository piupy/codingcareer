VERSION 5.00
Begin VB.Form Form22 
   Caption         =   "Form22"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form22"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get Your Shipmen Cost"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   1680
      TabIndex        =   1
      Top             =   2880
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Shipmen Cost (Using If Else)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1440
      TabIndex        =   0
      Top             =   600
      Width           =   5175
   End
End
Attribute VB_Name = "Form22"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer

Private Sub Command1_Click()
a = InputBox("Enter The Number Of Units")
If a >= 1 And a <= 15 Then
MsgBox "Price For Wholesalers Is Rs.50"
MsgBox "Price For Reatailers Is Rs.60"
End If

End Sub
