VERSION 5.00
Begin VB.Form frm10 
   Caption         =   "Menu Editor"
   ClientHeight    =   6300
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   7095
   LinkTopic       =   "Form1"
   ScaleHeight     =   6300
   ScaleWidth      =   7095
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuNew 
         Caption         =   "New"
      End
      Begin VB.Menu mnuOpen 
         Caption         =   "Open"
      End
      Begin VB.Menu mnuSave 
         Caption         =   "Save"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "Edit"
      Begin VB.Menu mnuInsCol 
         Caption         =   "Insert Column"
      End
      Begin VB.Menu mnuSelAll 
         Caption         =   "Select All"
      End
   End
   Begin VB.Menu mnuExit 
      Caption         =   "E&xit"
   End
End
Attribute VB_Name = "frm10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuExit_Click()
End
End Sub

Private Sub mnuInsCol_Click()
MsgBox ("You Pressed Insert Column Option On Table Submenu")
End Sub

Private Sub mnuNew_Click()
MsgBox ("You Pressed New Option On File Menu")
End Sub

Private Sub mnuOpen_Click()
MsgBox ("You Pressed Open Option On File Menu")
End Sub

Private Sub mnuSave_Click()
MsgBox ("You Pressed Save Option On File Menu")
End Sub

Private Sub mnuSelAll_Click()
MsgBox ("You Pressed Select Column Option On Edit Menu")
End Sub
