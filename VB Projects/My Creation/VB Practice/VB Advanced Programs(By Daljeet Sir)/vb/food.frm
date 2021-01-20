VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton End 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3720
      TabIndex        =   10
      Top             =   8640
      Width           =   4935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   6360
      TabIndex        =   9
      Top             =   7560
      Width           =   3615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Total Amount"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2280
      TabIndex        =   8
      Top             =   7560
      Width           =   3495
   End
   Begin VB.Frame Frame2 
      Caption         =   "Mode of payment"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6615
      Left            =   6360
      TabIndex        =   5
      Top             =   600
      Width           =   4335
      Begin VB.OptionButton Option2 
         Caption         =   "Cheque"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   600
         TabIndex        =   7
         Top             =   3480
         Width           =   3015
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Cash"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   480
         TabIndex        =   6
         Top             =   1440
         Width           =   3495
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Food itmes"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6735
      Left            =   600
      TabIndex        =   0
      Top             =   480
      Width           =   4935
      Begin VB.CheckBox Check4 
         Caption         =   "Chowmin Rs 100/"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   480
         TabIndex        =   4
         Top             =   4800
         Width           =   2895
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Burger Rs 90/"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   480
         TabIndex        =   3
         Top             =   3120
         Width           =   3495
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Coke Rs 80/"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   480
         TabIndex        =   2
         Top             =   1560
         Width           =   3855
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Pizza Rs 100/"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   480
         TabIndex        =   1
         Top             =   480
         Width           =   3615
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim Amount As Integer
If Check1.Value = 1 Then
Amount = Amount + 100
End If
If Check2.Value = 1 Then
Amount = Amount + 80
End If
If Check3.Value = 1 Then
Amount = Amount + 90
End If
If Check4.Value = 1 Then
Amount = Amount + 100
End If
If Option1.Value = True Then
MsgBox ("your bill by cash is" + Str(Amount))
End If
If Option2.Value = True Then
MsgBox ("Your bill By credit is" + Str(Amount))
End If
End Sub

Private Sub Command2_Click()
Check1.Value = 0
Check2.Value = 0
Check3.Value = 0
Check4.Value = 0
Option1.Value = False
Option2.Value = False

End Sub

Private Sub End_Click()
End
End Sub
