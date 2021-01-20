VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Welcome "
   ClientHeight    =   3030
   ClientLeft      =   225
   ClientTop       =   1455
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Height          =   14775
      Left            =   -1320
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   14715
      ScaleWidth      =   20595
      TabIndex        =   0
      Top             =   -3240
      Width           =   20655
   End
   Begin VB.Menu mnuLogin 
      Caption         =   "           Login          "
      Begin VB.Menu mnuAdmin 
         Caption         =   "Admin"
      End
      Begin VB.Menu mnuFacultyLogin 
         Caption         =   "Faculty &Login"
      End
   End
   Begin VB.Menu mnuSignUp 
      Caption         =   "            Sign &Up           "
   End
   Begin VB.Menu mnuAboutUs 
      Caption         =   "           About &Us            "
   End
   Begin VB.Menu mnuFeedBack 
      Caption         =   "         FeedBack           "
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "             Help          "
   End
   Begin VB.Menu mnuExit 
      Caption         =   "             Exit               "
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()

End Sub

Private Sub mnuAboutUs_Click()
Form7.Show
End Sub

Private Sub mnuAdmin_Click()
Dim a As String
a = InputBox("What is the name of your favourite place", "Please Answer The Security Question To Enter Admin Panel")
If StrComp("hell", a) = 0 Then
MsgBox "Right Answer . Welcome To The Admin Panel", , "Congratulations"
Form2.Show
Else: MsgBox "Sorry! Wrong Answer.You Can't Enter The Admin Panel This Way"
End If
End Sub

Private Sub mnuExit_Click()
If (MsgBox("Are You Sure You Want To Exit The Project ? ", vbYesNo, "Exit") = vbYes) Then
End
End If
End Sub


Private Sub mnuFacultyLogin_Click()
Form3.Show

End Sub

Private Sub mnuFeedBack_Click()
Form6.Show
End Sub

Private Sub mnuHelp_Click()
Form9.Show

End Sub

Private Sub mnuSignUp_Click()
Form5.Show

End Sub
