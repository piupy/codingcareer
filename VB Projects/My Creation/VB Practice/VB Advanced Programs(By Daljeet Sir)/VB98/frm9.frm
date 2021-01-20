VERSION 5.00
Begin VB.Form frm9 
   Caption         =   "Demo Of Drive, Directory And File List Boxes"
   ClientHeight    =   6150
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7125
   LinkTopic       =   "Form1"
   ScaleHeight     =   6150
   ScaleWidth      =   7125
   StartUpPosition =   3  'Windows Default
   Begin VB.FileListBox filfile 
      Height          =   2235
      Left            =   3840
      TabIndex        =   4
      Top             =   3600
      Width           =   2535
   End
   Begin VB.DirListBox dirdirectory 
      Height          =   2340
      Left            =   720
      TabIndex        =   3
      Top             =   3600
      Width           =   2535
   End
   Begin VB.DriveListBox drvdrive 
      Height          =   315
      Left            =   2160
      TabIndex        =   2
      Top             =   2640
      Width           =   2175
   End
   Begin VB.TextBox txtpattern 
      Height          =   615
      Left            =   3600
      TabIndex        =   1
      Text            =   """."""
      Top             =   600
      Width           =   2775
   End
   Begin VB.Label lbl1 
      Caption         =   "Enter Pattern For File Library"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   720
      Width           =   2655
   End
End
Attribute VB_Name = "frm9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub dirdirectory_Change()
filfile.Path = dirdirectory.Path
End Sub

Private Sub drvdrive_Change()
dirdirectory.Path = drvdrive.Drive
End Sub

Private Sub Form_Load()
drvdrive.Drive = "C:\"
dirdirectory.Path = "C:\"
filfile.Path = dirdirectory.Path
End Sub

Private Sub txtpattern_Change()
If Right(txtpattern.Text, 1) = "\" Then
drvdrive.Drive = Left(txtpattern.Text, 3)
dirdirectory.Path = txtpattern.Text
End If
End Sub
