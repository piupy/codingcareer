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
   Begin VB.CommandButton Command5 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   6
      Top             =   5520
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "<<"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   5
      Top             =   3840
      Width           =   855
   End
   Begin VB.CommandButton Command3 
      Caption         =   "<"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   4
      Top             =   3120
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   ">>"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   3
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      Caption         =   ">"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   2
      Top             =   1440
      Width           =   855
   End
   Begin VB.ListBox List2 
      Height          =   2790
      Left            =   5160
      TabIndex        =   1
      Top             =   1440
      Width           =   1935
   End
   Begin VB.ListBox List1 
      Height          =   2790
      Left            =   480
      TabIndex        =   0
      Top             =   1440
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim ind As Integer
    Dim str As String
    ind = List1.ListIndex
    If ind >= 0 Then
        str = List1.Text
        List2.AddItem str
        List1.RemoveItem ind
    End If
    Command1.Enabled = List1.ListCount > 0
    Command2.Enabled = List1.ListCount > 0
    Command3.Enabled = List2.ListCount > 0
    Command4.Enabled = List2.ListCount > 0
End Sub

Private Sub Command2_Click()
    Dim i, n As Integer
    Dim str As String
    n = List1.ListCount - 1
    For i = 0 To n
        List1.ListIndex = i
        List2.AddItem List1.Text
    Next i
    List1.Clear
    Command1.Enabled = False
    Command2.Enabled = False
    Command3.Enabled = True
    Command4.Enabled = True
End Sub



Private Sub Command3_Click()
    Dim ind As Integer
    Dim str As String
    ind = List2.ListIndex
    If ind >= 0 Then
        str = List2.Text
        List1.AddItem str
        List2.RemoveItem ind
    End If
    Command1.Enabled = List1.ListCount > 0
    Command2.Enabled = List1.ListCount > 0
    Command3.Enabled = List2.ListCount > 0
    Command4.Enabled = List2.ListCount > 0
End Sub

Private Sub Command4_Click()
    Dim i, n As Integer
    Dim str As String
    n = List2.ListCount - 1
    For i = 0 To n
        List2.ListIndex = i
        List1.AddItem List2.Text
    Next i
    List2.Clear
    Command1.Enabled = True
    Command2.Enabled = True
    Command3.Enabled = False
    Command4.Enabled = False
End Sub

Private Sub Command5_Click()
    End
End Sub

Private Sub Form_Load()
    List1.Text = ""
    List2.Text = ""
    Command3.Enabled = False
    Command4.Enabled = False
    List1.AddItem "ishwar"
    List1.AddItem "priyank"
    List1.AddItem "daljeet"
    List1.AddItem "iptisha"
    List1.AddItem "kapilesh"
    List1.AddItem "vedant"
    List1.AddItem "maheshwari"
    List1.AddItem "priyanka"
    List1.AddItem "vandana"
    End Sub
