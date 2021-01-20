VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   10710
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu menufile 
      Caption         =   "File"
      Begin VB.Menu Menunew 
         Caption         =   "New"
      End
      Begin VB.Menu Menuopen 
         Caption         =   "Open"
      End
      Begin VB.Menu Menusave 
         Caption         =   "Save As"
      End
      Begin VB.Menu Menuexit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu Menuedit 
      Caption         =   "Edit"
      Index           =   0
      Begin VB.Menu Menucut 
         Caption         =   "Cut"
      End
      Begin VB.Menu Menucopy 
         Caption         =   "Copy"
      End
      Begin VB.Menu Menupaste 
         Caption         =   "Paste"
      End
   End
   Begin VB.Menu Menuview 
      Caption         =   "View"
      Begin VB.Menu Menucode 
         Caption         =   "Code"
      End
      Begin VB.Menu Menuobject 
         Caption         =   "Object"
      End
      Begin VB.Menu Menutoolbar 
         Caption         =   "Toolbars"
         Begin VB.Menu Menustandard 
            Caption         =   "Standard"
         End
         Begin VB.Menu Menudebug 
            Caption         =   "Debug"
            Index           =   1
         End
         Begin VB.Menu Menued 
            Caption         =   "edit"
         End
      End
   End
   Begin VB.Menu Menuhelp 
      Caption         =   "Help"
      Begin VB.Menu Menuabout 
         Caption         =   "About"
      End
      Begin VB.Menu Menutopic 
         Caption         =   "Topics"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False









Private Sub Menuabout_Click()
MsgBox ("About button ")
End Sub

Private Sub Menucode_Click()
MsgBox ("code button")
End Sub

Private Sub Menucopy_Click()
MsgBox ("Copy button")
End Sub

Private Sub Menucut_Click()
MsgBox ("Cut button")
End Sub

Private Sub Menudebug_Click(Index As Integer)
MsgBox ("Debug button")
End Sub

Private Sub Menued_Click()
MsgBox ("Edit button")
End Sub

Private Sub Menuexit_Click()
MsgBox ("Exit button")
End
End Sub

Private Sub Menunew_Click()
MsgBox ("New Button")
End Sub

Private Sub Menuobject_Click()
MsgBox ("object button")
End Sub

Private Sub Menuopen_Click()
MsgBox ("Open Button")
End Sub

Private Sub Menupaste_Click()
MsgBox ("Paste button")
End Sub

Private Sub Menusave_Click()
MsgBox ("Save button")
End Sub

Private Sub Menustandard_Click()
MsgBox ("Standard button")
End Sub

Private Sub Menutopic_Click()
MsgBox ("Topic button")
End Sub
