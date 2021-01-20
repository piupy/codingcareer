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
   Begin VB.CommandButton Command4 
      Caption         =   "close"
      Height          =   735
      Left            =   5640
      TabIndex        =   8
      Top             =   4200
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "clear"
      Height          =   735
      Left            =   5640
      TabIndex        =   7
      Top             =   3000
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "remove"
      Height          =   615
      Left            =   5640
      TabIndex        =   6
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "add"
      Height          =   615
      Left            =   5640
      TabIndex        =   5
      Top             =   720
      Width           =   1095
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   480
      TabIndex        =   2
      Text            =   "Combo1"
      Top             =   2640
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   480
      TabIndex        =   1
      Top             =   1320
      Width           =   2175
   End
   Begin VB.Label Label3 
      BorderStyle     =   1  'Fixed Single
      Height          =   855
      Left            =   2880
      TabIndex        =   4
      Top             =   5160
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "clients"
      Height          =   735
      Left            =   600
      TabIndex        =   3
      Top             =   5160
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "enter a value"
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Combo1.AddItem Text1.Text
    Text1.Text = ""
    Text1.SetFocus
    Label3.Caption = Combo1.ListCount
    Command2.Enabled = Combo1.ListCount > 0
    Command3.Enabled = Combo1.ListCount > 0
End Sub

Private Sub Command2_Click()
    Dim ind As Integer
    ind = Combo1.ListIndex
    If ind >= 0 Then
        Combo1.RemoveItem ind
        Label3.Caption = Combo1.ListCount
    End If
    Command2.Enabled = Combo1.ListCount > 0
    Command3.Enabled = Combo1.ListCount > 0
End Sub

Private Sub Command3_Click()
    Combo1.Clear
    Command2.Enabled = False
    Command3.Enabled = False
    Label3.Caption = Combo1.ListCount
End Sub

Private Sub Command4_Click()
    End
End Sub

Private Sub Form_Load()
    Command2.Enabled = Combo1.ListCount > 0
    Command3.Enabled = Combo1.ListCount > 0
    Combo1.Text = ""
End Sub

Private Sub Text1_change()
    Command1.Enabled = (Len(Text1.Text) > 0)
End Sub

Private Sub Text1_GotFocus()
    Command1.Enabled = Len(Text1.Text) > 0
End Sub

