VERSION 5.00
Begin VB.Form Report 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Report"
   ClientHeight    =   6915
   ClientLeft      =   45
   ClientTop       =   360
   ClientWidth     =   8025
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6915
   ScaleWidth      =   8025
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdback 
      Caption         =   "Back"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   4
      Top             =   5400
      Width           =   3855
   End
   Begin VB.CommandButton cmdeg 
      Caption         =   "Employee Grade"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2400
      TabIndex        =   3
      Top             =   4440
      Width           =   3855
   End
   Begin VB.CommandButton cmdedp 
      Caption         =   "Employee Daily Production"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2400
      TabIndex        =   2
      Top             =   3480
      Width           =   3855
   End
   Begin VB.CommandButton cmdei 
      Caption         =   "Employee Information"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2400
      TabIndex        =   1
      Top             =   2520
      Width           =   3855
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   10
      Height          =   1455
      Left            =   2640
      Shape           =   2  'Oval
      Top             =   360
      Width           =   3255
   End
   Begin VB.Label Label1 
      Caption         =   "REPORT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   0
      Top             =   720
      Width           =   2535
   End
End
Attribute VB_Name = "Report"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdback_Click()
    Load Main
    Main.Show
    Unload Me
End Sub

Private Sub cmdedp_Click()
    prcForm
    rspro.Update
    DataEnvironment1.Connection1 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\emp.mdb;Persist Security Info=False"
    DataEnvironment1.Employee
    DataReport2.Show
    Unload DataEnvironment1
End Sub

Private Sub cmdeg_Click()
On Error Resume Next
    prcForm
    rsGrade.Update
    DataEnvironment1.Connection1 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\emp.mdb;Persist Security Info=False"
    DataEnvironment1.Employee
    DataReport3.Show
    Unload DataEnvironment1
End Sub

Private Sub cmdei_Click()
    prcForm
    rsemp.Update
    DataEnvironment1.Connection1 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\emp.mdb;Persist Security Info=False"
    DataEnvironment1.Employee
    DataReport1.Show
    Unload DataEnvironment1
End Sub

