VERSION 5.00
Begin VB.Form frm14 
   Caption         =   "Ahuja CD Player Company"
   ClientHeight    =   6075
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7305
   LinkTopic       =   "Form1"
   ScaleHeight     =   6075
   ScaleWidth      =   7305
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton optretailer 
      Caption         =   "RETAILER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4680
      TabIndex        =   8
      Top             =   1560
      Width           =   2055
   End
   Begin VB.OptionButton optwholesaler 
      Caption         =   "WHOLESALER"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4680
      TabIndex        =   7
      Top             =   720
      Width           =   2055
   End
   Begin VB.CommandButton cmdcost 
      Caption         =   "CALCULATE COST"
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
      Left            =   1800
      TabIndex        =   6
      Top             =   5160
      Width           =   3255
   End
   Begin VB.CheckBox chkspecialcustomer 
      Caption         =   "Special customer ?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   360
      TabIndex        =   5
      Top             =   2640
      Width           =   2415
   End
   Begin VB.Frame frm1 
      Caption         =   "Customer Type"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   4440
      TabIndex        =   4
      Top             =   240
      Width           =   2415
   End
   Begin VB.TextBox txtcost 
      Height          =   615
      Left            =   5400
      TabIndex        =   3
      Top             =   3840
      Width           =   1575
   End
   Begin VB.TextBox txtunits 
      Height          =   975
      Left            =   2520
      TabIndex        =   2
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label lblcost 
      Caption         =   "Total Cost In Rs."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2760
      TabIndex        =   1
      Top             =   3960
      Width           =   1815
   End
   Begin VB.Label lblunits 
      Alignment       =   2  'Center
      Caption         =   "Units Ordered"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   1815
   End
End
Attribute VB_Name = "frm14"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdcost_Click()
Dim unitsodered As Integer
Dim cost As Currency
unitsodered = txtunits.Text
If optwholesaler.Value = True Then
Select Case unitsodered
Case 1 To 15
cost = unitsodered * 50
Case 16 To 20
cost = unitsodered * 45
Case 21 To 30
cost = unitsodered * 40
Case 31 To 50
cost = unitsodered * 35
Case Is > 50
cost = unitsodered * 30
End Select
Else
Select Case unitsodered
Case 1 To 15
cost = unitsodered * 60
Case 16 To 20
cost = unitsodered * 55
Case 21 To 30
cost = unitsodered * 50
Case 31 To 50
cost = unitsodered * 45
Case Is > 50
cost = unitsodered * 40
End Select
End If
If chkspecialcustomer.Value = 1 Then
cost = cost - (cost * 0.1)
End If
txtcost.Text = cost
End Sub
