VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5010
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7575
   LinkTopic       =   "Form1"
   ScaleHeight     =   5010
   ScaleWidth      =   7575
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "PROCEED BILLING"
      Height          =   495
      Left            =   3720
      TabIndex        =   14
      Top             =   3840
      Width           =   3135
   End
   Begin VB.TextBox Text6 
      Height          =   495
      Left            =   5520
      TabIndex        =   13
      Top             =   2760
      Width           =   1575
   End
   Begin VB.Frame Frame1 
      Caption         =   "DISCOUNTS"
      Height          =   1215
      Left            =   120
      TabIndex        =   9
      Top             =   3600
      Width           =   2295
      Begin VB.OptionButton Option2 
         Caption         =   "       RETAILER{2%}"
         Height          =   375
         Left            =   120
         TabIndex        =   11
         Top             =   720
         Width           =   1935
      End
      Begin VB.OptionButton Option1 
         Caption         =   "WHOLESELLER{5%}"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   2760
      TabIndex        =   8
      Top             =   2160
      Width           =   1095
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   4320
      TabIndex        =   5
      Top             =   1440
      Width           =   975
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   4320
      TabIndex        =   4
      Top             =   840
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   2760
      TabIndex        =   3
      Top             =   1440
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2760
      TabIndex        =   2
      Top             =   840
      Width           =   1095
   End
   Begin VB.Line Line9 
      X1              =   5520
      X2              =   7080
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line Line8 
      X1              =   5520
      X2              =   7080
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Line Line7 
      X1              =   5520
      X2              =   7080
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Label Label5 
      Caption         =   "NET AMOUNT PAYABLE AFTER REBATE==="
      Height          =   495
      Left            =   1920
      TabIndex        =   12
      Top             =   3000
      Width           =   3495
   End
   Begin VB.Shape Shape1 
      Height          =   615
      Left            =   360
      Top             =   2040
      Width           =   3975
   End
   Begin VB.Label Label4 
      Caption         =   "TOTAL  AMOUNT"
      Height          =   255
      Left            =   720
      TabIndex        =   7
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Line Line6 
      X1              =   2640
      X2              =   5640
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Line Line5 
      X1              =   5640
      X2              =   5640
      Y1              =   720
      Y2              =   360
   End
   Begin VB.Line Line4 
      X1              =   2640
      X2              =   2640
      Y1              =   720
      Y2              =   360
   End
   Begin VB.Line Line2 
      X1              =   480
      X2              =   7200
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Line Line1 
      X1              =   360
      X2              =   7200
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Line Line3 
      X1              =   360
      X2              =   7200
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Label Label3 
      Caption         =   "     PRICE                    QUANTITY"
      Height          =   255
      Left            =   2760
      TabIndex        =   6
      Top             =   480
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "PRODUCT.2"
      Height          =   375
      Left            =   1080
      TabIndex        =   1
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "PRODUCT.1"
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   840
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text5.Text = Val(Text1.Text * Text3.Text) + Val(Text2.Text * Text4.Text)
If Option1.Value = True Then
Text6.Text = Text5.Text - Text5.Text * 5 / 100
ElseIf Option2.Value = True Then
Text6.Text = Text5.Text - Text5.Text * 2 / 100
Else: Text6.Text = Text5.Text
End If
End Sub



