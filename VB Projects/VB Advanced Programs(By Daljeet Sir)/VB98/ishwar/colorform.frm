VERSION 5.00
Begin VB.Form colorform 
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
         Caption         =   "Fill Color"
         Begin VB.Menu rd 
            Caption         =   "Red"
         End
         Begin VB.Menu gr 
            Caption         =   "Green"
         End
         Begin VB.Menu bl 
            Caption         =   "Blue"
         End
      End
      Begin VB.Menu ex 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu sz 
      Caption         =   "&Size"
      Begin VB.Menu sml 
         Caption         =   "Small"
      End
      Begin VB.Menu lrg 
         Caption         =   "Large"
      End
   End
End
Attribute VB_Name = "colorform"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub bl_Click()
    colorform.BackColor = QBColor(1)
    bl.Enabled = False
    gr.Enabled = True
    rd.Enabled = True
End Sub

Private Sub ex_Click()
    End
End Sub

Private Sub Form_Load()
    gr.Enabled = False
    colorform.BackColor = QBColor(2)
    colorform.WindowState = 0
    sml.Enabled = False
End Sub

Private Sub gr_Click()
    colorform.BackColor = QBColor(2)
    bl.Enabled = True
    gr.Enabled = False
    rd.Enabled = True
End Sub

Private Sub lrg_Click()
    colorform.WindowState = 2
    lrg.Enabled = False
    sml.Enabled = True
End Sub

Private Sub rd_Click()
    colorform.BackColor = QBColor(4)
    bl.Enabled = True
    gr.Enabled = True
    rd.Enabled = False
End Sub

Private Sub sml_Click()
    colorform.WindowState = 0
    lrg.Enabled = True
    sml.Enabled = False
End Sub
