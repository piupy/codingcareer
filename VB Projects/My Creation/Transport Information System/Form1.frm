VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00808000&
   Caption         =   "Welcome"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Height          =   8175
      Left            =   0
      Picture         =   "Form1.frx":397FC
      ScaleHeight     =   8115
      ScaleWidth      =   15315
      TabIndex        =   0
      Top             =   0
      Width           =   15375
   End
   Begin VB.Menu mnuLogin 
      Caption         =   "        Login        "
      Begin VB.Menu mnuAdmin 
         Caption         =   "   Admin   "
      End
      Begin VB.Menu mnuUser 
         Caption         =   "   User   "
      End
   End
   Begin VB.Menu mnuSignUp 
      Caption         =   "        Sign &Up        "
   End
   Begin VB.Menu mnuBusSchedule 
      Caption         =   "        Bus &Schedule        "
      Begin VB.Menu mnuAC 
         Caption         =   "     AC         "
      End
      Begin VB.Menu mnuNonAC 
         Caption         =   "     Non &AC       "
      End
   End
   Begin VB.Menu mnuAboutDeveloper 
      Caption         =   "        About &Developer          "
   End
   Begin VB.Menu mnuFeedback 
      Caption         =   "        Feedback        "
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "           Help          "
   End
   Begin VB.Menu mnuExit 
      Caption         =   "           Exit           "
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnuAboutDeveloper_Click()
Form4.Show
End Sub

Private Sub mnuAC_Click()
MsgBox "You Must Login First !!!", vbCritical, "Sorry"
End Sub

Private Sub mnuAdmin_Click()
a = InputBox("What is your pet name ?", "Please Answer Your Security Question", "********")
If StrComp(a, "ronny") = 0 Then
MsgBox "Welcome To The Admin Panel !!!", vbInformation, "Right Answer."
Form10.Show
Else: MsgBox "Wrong Answer !!!", vbCritical, "Sorry"
End If
End Sub

Private Sub mnuExit_Click()
If ((MsgBox("Are You Sure You Want To Exit ?", vbCritical + vbYesNo, "Sure")) = vbYes) Then
End
End If
End Sub

Private Sub mnuFeedback_Click()
Form5.Show
End Sub

Private Sub mnuHelp_Click()
Form6.Show
End Sub



Private Sub mnuNonAC_Click()

MsgBox "You Must Login First !!!", vbCritical, "Sorry"
End Sub

Private Sub mnuSignUp_Click()
Form3.Show
End Sub

Private Sub mnuUser_Click()
Form2.Show
End Sub

