VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form frmSplash1 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   5265
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   9690
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash1.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5265
   ScaleWidth      =   9690
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFC0&
      BorderStyle     =   0  'None
      Height          =   5370
      Left            =   -90
      TabIndex        =   0
      Top             =   -60
      Width           =   9840
      Begin VB.Timer Timer1 
         Interval        =   40
         Left            =   2040
         Top             =   2880
      End
      Begin MSComctlLib.ProgressBar ProgressBar1 
         Height          =   735
         Left            =   1920
         TabIndex        =   5
         Top             =   4200
         Width           =   7695
         _ExtentX        =   13573
         _ExtentY        =   1296
         _Version        =   393216
         Appearance      =   1
      End
      Begin VB.Label Label4 
         Caption         =   "Rohit Sharma"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6960
         TabIndex        =   9
         Top             =   600
         Width           =   2415
      End
      Begin VB.Label Label3 
         Caption         =   "Back End --------> Microsoft Access 2007"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3600
         TabIndex        =   8
         Top             =   3600
         Width           =   4935
      End
      Begin VB.Label Label2 
         Caption         =   "Front End ------>  Microsoft Visual Basic 6.0"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3600
         TabIndex        =   7
         Top             =   3000
         Width           =   5655
      End
      Begin VB.Label Label1 
         Caption         =   "Loading :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   4320
         Width           =   1575
      End
      Begin VB.Image imgLogo 
         Height          =   1065
         Left            =   360
         Picture         =   "frmSplash1.frx":000C
         Stretch         =   -1  'True
         Top             =   2715
         Width           =   1095
      End
      Begin VB.Label lblPlatform 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Platforms Used :"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   5340
         TabIndex        =   2
         Top             =   2460
         Width           =   1995
      End
      Begin VB.Label lblProductName 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Project :"
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
         Left            =   1200
         TabIndex        =   4
         Top             =   1620
         Width           =   2025
      End
      Begin VB.Label lblLicenseTo 
         Alignment       =   2  'Center
         Caption         =   "Developer :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4800
         TabIndex        =   1
         Top             =   600
         Width           =   1815
      End
      Begin VB.Label lblCompanyProduct 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Transport Management System"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   2955
         TabIndex        =   3
         Top             =   1665
         Width           =   6315
      End
   End
End
Attribute VB_Name = "frmSplash1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Timer1_Timer()
If ProgressBar1.Value < 99 Then
ProgressBar1.Value = ProgressBar1.Value + 1
Else: Form1.Show
Unload Me
End If
End Sub
