VERSION 5.00
Begin VB.Form colorform 
   Caption         =   "main form"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu clr 
      Caption         =   "&Color"
      Begin VB.Menu fc 
         Caption         =   "F&ill Color"
      End
      Begin VB.Menu ex 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu sz 
      Caption         =   "&Size"
      Begin VB.Menu sml 
         Caption         =   "S&mall"
      End
      Begin VB.Menu lrg 
         Caption         =   "&Large"
      End
   End
End
Attribute VB_Name = "colorform"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub ex_Click()
    End
End Sub

Private Sub fc_Click()
    Load Form1
    Form1.Show
End Sub

Private Sub Form_Load()
    colorform.BackColor = QBColor(7)
    
    colorform.WindowState = 0
    sml.Enabled = False
End Sub

Private Sub lrg_Click()
    colorform.WindowState = 2
    lrg.Enabled = False
    sml.Enabled = True
End Sub

Private Sub sml_Click()
    colorform.WindowState = 0
    lrg.Enabled = True
    sml.Enabled = False
End Sub

