VERSION 5.00
Begin VB.Form frmLogin 
   BackColor       =   &H00FFC0C0&
   Caption         =   "Log-In"
   ClientHeight    =   4530
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8430
   LinkTopic       =   "Form2"
   ScaleHeight     =   4530
   ScaleWidth      =   8430
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "User"
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   24
         Charset         =   0
         Weight          =   600
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   4200
      TabIndex        =   2
      Top             =   1920
      Width           =   3375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Admin"
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   24
         Charset         =   0
         Weight          =   600
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   360
      TabIndex        =   1
      Top             =   1920
      Width           =   3135
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFC0C0&
      Caption         =   "Log-In User"
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   18
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2760
      TabIndex        =   0
      Top             =   480
      Width           =   2295
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
frmCheckUser.Show
End Sub

Private Sub Command2_Click()
frmCheckUser.Show
End Sub
