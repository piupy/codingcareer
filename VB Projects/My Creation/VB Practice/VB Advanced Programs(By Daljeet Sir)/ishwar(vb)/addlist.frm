VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   840
      Left            =   840
      TabIndex        =   5
      Top             =   2760
      Width           =   2055
   End
   Begin VB.CommandButton Command4 
      Caption         =   "close"
      Height          =   495
      Left            =   5520
      TabIndex        =   4
      Top             =   3720
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "clear"
      Height          =   495
      Left            =   5520
      TabIndex        =   3
      Top             =   2880
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "remove"
      Height          =   495
      Left            =   5520
      TabIndex        =   2
      Top             =   1920
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "add"
      Height          =   495
      Left            =   5520
      TabIndex        =   1
      Top             =   960
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   1560
      Width           =   2055
   End
   Begin VB.Label Label3 
      BorderStyle     =   1  'Fixed Single
      Height          =   1095
      Left            =   4200
      TabIndex        =   8
      Top             =   5280
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "clients"
      Height          =   855
      Left            =   840
      TabIndex        =   7
      Top             =   5400
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "enter item name"
      Height          =   495
      Left            =   840
      TabIndex        =   6
      Top             =   720
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    List1.AddItem Text1.Text
    Text1.Text = ""
    Text1.SetFocus
    Label3.Caption = List1.ListCount
    Command2.Enabled = List1.ListCount > 0
    Command3.Enabled = List1.ListCount > 0
End Sub

Private Sub Command2_Click()
    Dim ind As Integer
    ind = List1.ListIndex
    If ind >= 0 Then
        List1.RemoveItem ind
        Label3.Caption = List1.ListCount
    End If
    Command2.Enabled = List1.ListCount > 0
    Command3.Enabled = List1.ListCount > 0
End Sub

Private Sub Command3_Click()
    List1.Clear
    Command2.Enabled = False
    Command3.Enabled = False
    Label3.Caption = List1.ListCount
End Sub

Private Sub Command4_Click()
    End
End Sub

Private Sub Form_Load()
    Command2.Enabled = List1.ListCount > 0
    Command3.Enabled = List1.ListCount > 0
    List1.Text = ""
End Sub

Private Sub Text1_change()
    Command1.Enabled = (Len(Text1.Text) > 0)
End Sub

Private Sub Text1_GotFocus()
    Command1.Enabled = Len(Text1.Text) > 0
End Sub
