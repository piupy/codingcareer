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
   Begin VB.CommandButton Command3 
      Caption         =   "End"
      Height          =   1215
      Left            =   3360
      TabIndex        =   12
      Top             =   5520
      Width           =   2655
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
      Height          =   1215
      Left            =   5040
      TabIndex        =   11
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   1215
      Left            =   2040
      TabIndex        =   10
      Top             =   3360
      Width           =   2775
   End
   Begin VB.TextBox Text5 
      Height          =   855
      Left            =   6960
      TabIndex        =   9
      Top             =   1080
      Width           =   1815
   End
   Begin VB.TextBox Text4 
      Height          =   735
      Left            =   6960
      TabIndex        =   7
      Top             =   240
      Width           =   1815
   End
   Begin VB.TextBox Text3 
      Height          =   735
      Left            =   2280
      TabIndex        =   5
      Top             =   2040
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   2280
      TabIndex        =   3
      Top             =   1080
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   2280
      TabIndex        =   1
      Top             =   240
      Width           =   1815
   End
   Begin VB.Label Label5 
      Caption         =   "Net salary"
      Height          =   855
      Left            =   4680
      TabIndex        =   8
      Top             =   1080
      Width           =   1815
   End
   Begin VB.Label Label4 
      Caption         =   "PF"
      Height          =   735
      Left            =   4680
      TabIndex        =   6
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "HRA"
      Height          =   735
      Left            =   240
      TabIndex        =   4
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "DA"
      Height          =   495
      Left            =   360
      TabIndex        =   2
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Basic salary"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Function calnetsalary(basicsal As Integer) As Integer
Dim da As Integer, hra As Integer, pf As Integer

da = Text1.Text * 5 / 10
hra = Text1.Text * 3 / 100
pf = Text1.Text * 10 / 100

calnetsalary = basicsal + da + hra - pf
 Text2.Text = da
 Text3.Text = hra
 Text4.Text = pf
End Function
Private Sub command1_click()
Dim net As Integer
net = calnetsalary(Text1.Text)
Text5.Text = net


End Sub

Private Sub Command2_Click()
Text1.Text = " "
Text2.Text = " "
Text3.Text = " "
Text4.Text = " "
Text5.Text = " "

End Sub

Private Sub Command3_Click()
End
End Sub
