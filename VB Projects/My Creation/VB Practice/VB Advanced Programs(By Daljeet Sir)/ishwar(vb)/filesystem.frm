VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Select Program"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdcancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   6120
      TabIndex        =   11
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "&OK"
      Height          =   375
      Left            =   6120
      TabIndex        =   10
      Top             =   1200
      Width           =   1215
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   2880
      TabIndex        =   9
      Top             =   5160
      Width           =   2055
   End
   Begin VB.DirListBox Dir1 
      Height          =   2115
      Left            =   2880
      TabIndex        =   7
      Top             =   1920
      Width           =   2055
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   240
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   5160
      Width           =   2055
   End
   Begin VB.FileListBox File1 
      Height          =   2235
      Left            =   240
      TabIndex        =   2
      Top             =   1920
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   240
      TabIndex        =   1
      Top             =   1080
      Width           =   2055
   End
   Begin VB.Label Label5 
      Caption         =   "Drive"
      Height          =   255
      Left            =   2880
      TabIndex        =   8
      Top             =   4440
      Width           =   2055
   End
   Begin VB.Label Label4 
      Height          =   375
      Left            =   3000
      TabIndex        =   6
      Top             =   1080
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "Directories"
      Height          =   375
      Left            =   3000
      TabIndex        =   5
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "File &Type"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   4440
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "&File Name :"
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdcancel_Click()
    End
End Sub

Private Sub cmdOK_Click()
    If Text1.Text = "" Then
        MsgBox "No file was selected....."
    Else
        MsgBox "Selected file is " + Text1.Text
    End If
End Sub

Private Sub Combo1_Click()
    Select Case Combo1.ListIndex
    Case 0:
        File1.Pattern = "*.*"
    Case 1:
        File1.Pattern = "*.doc"
    Case 2:
        File1.Pattern = "*.txt"
    End Select
End Sub

Private Sub Dir1_Change()
    File1.Path = Dir1.Path
    Label4.Caption = Dir1.Path
End Sub

Private Sub Drive1_Change()
    On Error GoTo ErrorTrap
    Dir1.Path = Drive1.Drive
    Exit Sub
ErrorTrap:
    MsgBox "Drive Error !", vbExclamation, "Error....."
    Drive1.Drive = Dir1.Path
    Exit Sub
End Sub

Private Sub File1_Click()
    Text1.Text = File1.FileName
End Sub

Private Sub Form_Load()
    Combo1.AddItem "All Files(*.*)"
    Combo1.AddItem "Doc Files(*.DOC)"
    Combo1.AddItem "Text Files(*.TXT)"
    Combo1.ListIndex = 0
    Label4.Caption = Dir1.Path
End Sub
