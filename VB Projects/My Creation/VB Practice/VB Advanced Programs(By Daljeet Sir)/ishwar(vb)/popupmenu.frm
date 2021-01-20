VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mfile 
      Caption         =   "&File"
      Begin VB.Menu mnew 
         Caption         =   "New"
      End
      Begin VB.Menu mopen 
         Caption         =   "open"
      End
      Begin VB.Menu sep1 
         Caption         =   "-"
      End
      Begin VB.Menu msave 
         Caption         =   "save"
      End
      Begin VB.Menu msaveas 
         Caption         =   "save as"
      End
      Begin VB.Menu sep2 
         Caption         =   "-"
      End
      Begin VB.Menu mpage 
         Caption         =   "page setup"
      End
      Begin VB.Menu mprint 
         Caption         =   "print"
      End
      Begin VB.Menu mprintp 
         Caption         =   "print preview"
      End
      Begin VB.Menu sep3 
         Caption         =   "-"
      End
      Begin VB.Menu mexit 
         Caption         =   "exit"
      End
   End
   Begin VB.Menu medit 
      Caption         =   "&Edit"
      Begin VB.Menu mundo 
         Caption         =   "Undo"
      End
      Begin VB.Menu mrepeat 
         Caption         =   "repeat"
      End
      Begin VB.Menu sep4 
         Caption         =   "-"
      End
      Begin VB.Menu mcut 
         Caption         =   "cut"
      End
      Begin VB.Menu mcopy 
         Caption         =   "copy"
      End
      Begin VB.Menu mpaste 
         Caption         =   "paste"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Form_Mousedown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        PopupMenu medit
    End If
End Sub

Private Sub mexit_Click()
    End
End Sub
