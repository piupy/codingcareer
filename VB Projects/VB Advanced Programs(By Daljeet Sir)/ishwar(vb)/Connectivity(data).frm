VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "D:\ishwar\college.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   735
      Left            =   600
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "student"
      Top             =   5400
      Width           =   3735
   End
   Begin VB.TextBox Text4 
      DataField       =   "marks"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   4680
      TabIndex        =   8
      Top             =   3600
      Width           =   1815
   End
   Begin VB.TextBox Text3 
      DataField       =   "address"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   4680
      TabIndex        =   7
      Top             =   3000
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      DataField       =   "name"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   4680
      TabIndex        =   6
      Top             =   2280
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      DataField       =   "roll"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   4680
      TabIndex        =   5
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Label Label5 
      Caption         =   "MARKS"
      Height          =   255
      Left            =   480
      TabIndex        =   4
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label Label4 
      Caption         =   "ADDRESS"
      Height          =   255
      Left            =   480
      TabIndex        =   3
      Top             =   3000
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "NAME"
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   2280
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "ROLL NUMBER"
      Height          =   255
      Left            =   480
      TabIndex        =   1
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Student Information"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2040
      TabIndex        =   0
      Top             =   120
      Width           =   3855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
