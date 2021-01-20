VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   ">|"
      Height          =   495
      Left            =   4440
      TabIndex        =   14
      Top             =   3960
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   ">"
      Height          =   495
      Left            =   3480
      TabIndex        =   13
      Top             =   3960
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "<"
      Height          =   495
      Left            =   2520
      TabIndex        =   12
      Top             =   3960
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "|<"
      Height          =   495
      Left            =   1560
      TabIndex        =   11
      Top             =   3960
      Width           =   975
   End
   Begin VB.TextBox txtdeptno 
      DataField       =   "deptno"
      DataMember      =   "Command1"
      DataSource      =   "DataEnvironment1"
      Height          =   285
      Left            =   1770
      TabIndex        =   9
      Top             =   2960
      Width           =   660
   End
   Begin VB.TextBox txtesal 
      DataField       =   "esal"
      DataMember      =   "Command1"
      DataSource      =   "DataEnvironment1"
      Height          =   285
      Left            =   1770
      TabIndex        =   7
      Top             =   2580
      Width           =   660
   End
   Begin VB.TextBox txtejob 
      DataField       =   "ejob"
      DataMember      =   "Command1"
      DataSource      =   "DataEnvironment1"
      Height          =   285
      Left            =   1770
      TabIndex        =   5
      Top             =   2200
      Width           =   3375
   End
   Begin VB.TextBox txtename 
      DataField       =   "ename"
      DataMember      =   "Command1"
      DataSource      =   "DataEnvironment1"
      Height          =   285
      Left            =   1770
      TabIndex        =   3
      Top             =   1820
      Width           =   3375
   End
   Begin VB.TextBox txtecode 
      DataField       =   "ecode"
      DataMember      =   "Command1"
      DataSource      =   "DataEnvironment1"
      Height          =   285
      Left            =   1770
      TabIndex        =   1
      Top             =   1440
      Width           =   660
   End
   Begin VB.Label Label1 
      Caption         =   "EXAMPLE DATA REPORT"
      Height          =   375
      Left            =   2400
      TabIndex        =   10
      Top             =   240
      Width           =   2415
   End
   Begin VB.Label lblFieldLabel 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "deptno:"
      Height          =   255
      Index           =   4
      Left            =   -75
      TabIndex        =   8
      Top             =   3005
      Width           =   1815
   End
   Begin VB.Label lblFieldLabel 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "esal:"
      Height          =   255
      Index           =   3
      Left            =   -75
      TabIndex        =   6
      Top             =   2625
      Width           =   1815
   End
   Begin VB.Label lblFieldLabel 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "ejob:"
      Height          =   255
      Index           =   2
      Left            =   -75
      TabIndex        =   4
      Top             =   2245
      Width           =   1815
   End
   Begin VB.Label lblFieldLabel 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "ename:"
      Height          =   255
      Index           =   1
      Left            =   -75
      TabIndex        =   2
      Top             =   1865
      Width           =   1815
   End
   Begin VB.Label lblFieldLabel 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "ecode:"
      Height          =   255
      Index           =   0
      Left            =   -75
      TabIndex        =   0
      Top             =   1485
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    DataEnvironment1.rsCommand1.MoveFirst
End Sub

Private Sub Command2_Click()
     DataEnvironment1.rsCommand1.MovePrevious
End Sub

Private Sub Command3_Click()
    DataEnvironment1.rsCommand1.MoveNext
End Sub

Private Sub Command4_Click()
    DataEnvironment1.rsCommand1.MoveLast
End Sub
         
