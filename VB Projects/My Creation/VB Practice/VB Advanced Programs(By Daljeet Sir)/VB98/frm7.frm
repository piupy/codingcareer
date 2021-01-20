VERSION 5.00
Begin VB.Form frm7 
   Caption         =   "The Shape Program"
   ClientHeight    =   6165
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7170
   LinkTopic       =   "Form1"
   ScaleHeight     =   6165
   ScaleWidth      =   7170
   StartUpPosition =   3  'Windows Default
   Begin VB.VScrollBar vsbwidth 
      Height          =   5895
      Left            =   6600
      Max             =   100
      Min             =   1
      TabIndex        =   4
      Top             =   120
      Value           =   10
      Width           =   375
   End
   Begin VB.OptionButton optrndsqu 
      Caption         =   "ROUNDED SQUARE"
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
      Left            =   4200
      TabIndex        =   3
      Top             =   2520
      Width           =   1695
   End
   Begin VB.OptionButton optcir 
      Caption         =   "CIRCLE"
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
      Left            =   600
      TabIndex        =   2
      Top             =   2520
      Width           =   1695
   End
   Begin VB.OptionButton optsqu 
      Caption         =   "SQUARE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4200
      TabIndex        =   1
      Top             =   600
      Width           =   1695
   End
   Begin VB.OptionButton optrect 
      Caption         =   "RECTANGLE"
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
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   1695
   End
   Begin VB.Shape shape 
      Height          =   2295
      Left            =   2160
      Shape           =   3  'Circle
      Top             =   3720
      Width           =   2535
   End
End
Attribute VB_Name = "frm7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub optcir_Click()
If optcir.Value = True Then
shape.shape = 3
End If
End Sub

Private Sub optrect_Click()
If optrect.Value = True Then
shape.shape = 0
End If
End Sub

Private Sub optrndsqu_Click()
If optrndsqu.Value = True Then
shape.shape = 5
End If
End Sub

Private Sub optsqu_Click()
If optsqu.Value = True Then
shape.shape = 1
End If
End Sub

Private Sub vsbwidth_Change()
shape.BorderWidth = vsbwidth.Value
End Sub
