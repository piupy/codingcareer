VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "ParentForm"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnfile 
      Caption         =   "&File"
      Begin VB.Menu mnnew 
         Caption         =   "&New"
      End
      Begin VB.Menu sep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnexit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu mnwindow 
      Caption         =   "&Window"
      Begin VB.Menu mncascade 
         Caption         =   "&Cascade"
      End
      Begin VB.Menu mntile 
         Caption         =   "&Tile"
      End
   End
End
Attribute VB_Name = "mdiform1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mncascade_Click()
    mdiform1.Arrange vbCascade
End Sub
Private Sub mnexit_Click()
    End
End Sub
Private Sub mnnew_Click()
    Dim newform As New Form1
    newform.Show
End Sub

Private Sub mntile_Click()
    mdiform1.Arrange vbTileHorizontal
End Sub

