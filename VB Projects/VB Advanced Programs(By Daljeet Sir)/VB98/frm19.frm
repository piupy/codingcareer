VERSION 5.00
Begin VB.Form frm19 
   Caption         =   "Generating Item Codes"
   ClientHeight    =   6255
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7170
   LinkTopic       =   "Form1"
   ScaleHeight     =   6255
   ScaleWidth      =   7170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmditemcodes 
      Caption         =   "Generating Item Code"
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
      Left            =   4320
      TabIndex        =   1
      Top             =   2160
      Width           =   2535
   End
   Begin VB.ListBox lst1 
      Height          =   3960
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   3135
   End
End
Attribute VB_Name = "frm19"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmditemcodes_Click()
Dim outer As Integer
Dim inner As Integer
For outer = Asc("A") To Asc("E")
For inner = 1 To 5
lst1.AddItem Chr(outer) & inner
Next inner
Next outer
End Sub
