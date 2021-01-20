VERSION 5.00
Begin VB.Form frm4 
   Caption         =   "Total Cost Of Selected Products"
   ClientHeight    =   6255
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7080
   LinkTopic       =   "Form1"
   ScaleHeight     =   6255
   ScaleWidth      =   7080
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdbuyitems 
      Caption         =   "BUY ITEMS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   18
      Top             =   5520
      Width           =   1935
   End
   Begin VB.TextBox txtPens 
      Height          =   495
      Left            =   2400
      TabIndex        =   9
      Top             =   4560
      Width           =   1935
   End
   Begin VB.TextBox txtSketchPens 
      Height          =   495
      Left            =   2400
      TabIndex        =   8
      Top             =   3720
      Width           =   1935
   End
   Begin VB.TextBox txtChartPaper 
      Height          =   495
      Left            =   2400
      TabIndex        =   7
      Top             =   2880
      Width           =   1935
   End
   Begin VB.TextBox txtThumbPins 
      Height          =   495
      Left            =   2400
      TabIndex        =   6
      Top             =   2040
      Width           =   1935
   End
   Begin VB.TextBox txtFile 
      Height          =   495
      Left            =   2400
      TabIndex        =   5
      Top             =   1200
      Width           =   1935
   End
   Begin VB.CheckBox chkPens 
      Caption         =   "Pens"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   4560
      width           =   1695
   End
   Begin VB.CheckBox chkSketchPens 
      Caption         =   "Sketch Pens"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   3720
      Width           =   1695
   End
   Begin VB.CheckBox chkChartPaper 
      Caption         =   "Chart Paper"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   2880
      Width           =   1695
   End
   Begin VB.CheckBox chkThumbPins 
      Caption         =   "Thumb Pins"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   2040
      Width           =   1695
   End
   Begin VB.CheckBox chkFile 
      Caption         =   " File"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Label lblmessage 
      Height          =   495
      Left            =   2880
      TabIndex        =   17
      Top             =   5640
      Width           =   3975
   End
   Begin VB.Label Label7 
      Caption         =   "20.00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   16
      Top             =   4560
      Width           =   2055
   End
   Begin VB.Label Label6 
      Caption         =   "40.00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   15
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label Label5 
      Caption         =   "3.00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   14
      Top             =   2880
      Width           =   2055
   End
   Begin VB.Label Label4 
      Caption         =   "10.00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   13
      Top             =   2040
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "15.00"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4800
      TabIndex        =   12
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Price Per Unit (Rs.)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4800
      TabIndex        =   11
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Quantity"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2520
      TabIndex        =   10
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "frm4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub chkThumbPins_Click()
If chkThumbPins.Value = 1 Then
txtThumbPins.Visible = True
Else
txtThumbPins.Visible = False
End If
End Sub

Private Sub chkPens_Click()
If chkPens.Value = 1 Then
txtPens.Visible = True
Else
txtPens.Visible = False
End If
End Sub

Private Sub chkFile_Click()
If chkFile.Value = 1 Then
txtFile.Visible = True
Else
txtFile.Visible = False
End If
End Sub

Private Sub chkSketchPens_Click()
If chkSketchPens.Value = 1 Then
txtSketchPens.Visible = True
Else
txtSketchPens.Visible = False
End If
End Sub

Private Sub chkChartPaper_Click()
If chkChartPaper.Value = 1 Then
txtChartPaper.Visible = True
Else
txtChartPaper.Visible = False
End If
End Sub

Private Sub cmdbuyitems_Click()
File = Val(txtFile.Text) * Val("5.00")
ThumbPins = Val(txtThumbPins.Text) * Val("10.00")
ChartPaper = Val(txtChartPaper.Text) * ("3.00")
SketchPens = Val(txtSketchPens.Text) * ("40.00")
Pens = Val(txtPens.Text) * ("20.00")
Total = File + ThumbPins + ChartPaper + SketchPens + Pens
lblmessage.Caption = "You Have TO Pay Total Rs. " & Str(Total) & "/-"
End Sub

Private Sub Form_Load()
Dim File As Single
Dim ThumbPins As Single
Dim ChartPaper As Single
Dim SketchPens As Single
Dim Pens As Single
End Sub
