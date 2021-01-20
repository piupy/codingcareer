VERSION 5.00
Begin VB.Form frmSplash 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4485
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   8595
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4485
   ScaleWidth      =   8595
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   960
      Top             =   600
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00400000&
      Height          =   4650
      Left            =   -120
      TabIndex        =   0
      Top             =   -120
      Width           =   8760
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         Caption         =   "Licensed To  :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3000
         TabIndex        =   8
         Top             =   480
         Width           =   2775
      End
      Begin VB.Label lblProductName 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Project : Faculty Attendance System"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   240
         TabIndex        =   7
         Top             =   1680
         Width           =   8355
      End
      Begin VB.Label Label2 
         Caption         =   "Platforms Used :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3120
         TabIndex        =   6
         Top             =   3000
         Width           =   5175
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "Pawan Kumar"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5880
         TabIndex        =   5
         Top             =   960
         Width           =   2415
      End
      Begin VB.Image imgLogo 
         Height          =   1305
         Left            =   720
         Picture         =   "frmSplash.frx":000C
         Stretch         =   -1  'True
         Top             =   2715
         Width           =   1335
      End
      Begin VB.Label lblWarning 
         Caption         =   "Warning:This Project Not For Sale "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   270
         TabIndex        =   2
         Top             =   4140
         Width           =   2535
      End
      Begin VB.Label lblVersion 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Back End : Microsoft Access 2007"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   3120
         TabIndex        =   3
         Top             =   3900
         Width           =   5175
      End
      Begin VB.Label lblPlatform 
         AutoSize        =   -1  'True
         Caption         =   "Front End : Visual Basic 6.0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   3120
         TabIndex        =   4
         Top             =   3480
         Width           =   5175
      End
      Begin VB.Label lblLicenseTo 
         Alignment       =   2  'Center
         Caption         =   " Rohit Sharma"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5880
         TabIndex        =   1
         Top             =   480
         Width           =   2415
      End
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Timer1_Timer()

Unload Me
frmSplash1.Show

End Sub
