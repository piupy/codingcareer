VERSION 5.00
Begin VB.Form frmSplash 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1950
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   5760
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1950
   ScaleWidth      =   5760
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0E0FF&
      Height          =   2130
      Left            =   -120
      TabIndex        =   0
      Top             =   -120
      Width           =   6000
      Begin VB.CommandButton Command2 
         BackColor       =   &H00FFFFC0&
         Caption         =   "Non - AC Bus"
         Height          =   495
         Left            =   3360
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   840
         Width           =   1815
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFFFC0&
         Caption         =   "AC Bus"
         Height          =   495
         Left            =   1080
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   840
         Width           =   1815
      End
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form7.Show
Unload Me
End Sub

Private Sub Command2_Click()
Form8.Show
Unload Me
End Sub


