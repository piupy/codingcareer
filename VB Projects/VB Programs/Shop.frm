VERSION 5.00
Begin VB.Form Form8 
   Caption         =   "Form8"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form8"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   3000
      Left            =   480
      Top             =   3000
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Remove The Item From The List"
      Height          =   975
      Left            =   2760
      TabIndex        =   3
      Top             =   3480
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Add The Item"
      Height          =   975
      Left            =   2640
      TabIndex        =   2
      Top             =   1920
      Width           =   1815
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   3840
      TabIndex        =   1
      Text            =   "Combo1"
      Top             =   720
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Add Items To Your List"
      Height          =   735
      Left            =   720
      TabIndex        =   0
      Top             =   720
      Width           =   2295
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As Integer
Private Sub Command1_Click()
a = InputBox("Enter The Name Of The Item You Want To Add In Your List")
Combo1.AddItem a

End Sub

Private Sub Command2_Click()
a = InputBox("Type The Index Value Of The You Want To Remove")
b = a - 1
Combo1.RemoveItem b
End Sub

Private Sub Label2_Click()

End Sub

Private Sub Timer1_Timer()
Print "Come On! Hurry Up"

End Sub
