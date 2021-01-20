VERSION 5.00
Begin VB.Form frmSplash1 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1725
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   6480
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash1.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1725
   ScaleWidth      =   6480
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H00400000&
      Height          =   1890
      Left            =   -120
      TabIndex        =   0
      Top             =   -120
      Width           =   6720
      Begin VB.Timer Timer3 
         Interval        =   1200
         Left            =   4320
         Top             =   840
      End
      Begin VB.Timer Timer2 
         Interval        =   800
         Left            =   2400
         Top             =   840
      End
      Begin VB.Timer Timer1 
         Interval        =   400
         Left            =   480
         Top             =   840
      End
      Begin VB.Shape Shape3 
         BackColor       =   &H00008000&
         BackStyle       =   1  'Opaque
         Height          =   1215
         Left            =   4680
         Shape           =   3  'Circle
         Top             =   360
         Width           =   1695
      End
      Begin VB.Shape Shape2 
         BackColor       =   &H0000FFFF&
         BackStyle       =   1  'Opaque
         Height          =   1215
         Left            =   2880
         Shape           =   3  'Circle
         Top             =   360
         Width           =   1335
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   1455
         Left            =   960
         Shape           =   3  'Circle
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label lblCompany 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4560
         TabIndex        =   1
         Top             =   3270
         Width           =   2415
      End
   End
End
Attribute VB_Name = "frmSplash1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_KeyPress(KeyAscii As Integer)
    Unload Me
End Sub

Private Sub Frame1_Click()
    Unload Me
End Sub

Private Sub Timer1_Timer()
Shape1.Visible = False

End Sub

Private Sub Timer2_Timer()
Shape2.Visible = False

End Sub

Private Sub Timer3_Timer()
Shape3.Visible = False
Form1.Show
Unload Me

End Sub
