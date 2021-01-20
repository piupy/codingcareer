VERSION 5.00
Begin VB.Form frm26 
   Caption         =   "Store Product Names In Arrays"
   ClientHeight    =   6360
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   7065
   LinkTopic       =   "Form1"
   ScaleHeight     =   6360
   ScaleWidth      =   7065
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdstoreproductcode 
      Caption         =   "STORE PRODUCT CODE"
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
      Left            =   1680
      TabIndex        =   6
      Top             =   5160
      Width           =   3615
   End
   Begin VB.TextBox txtprice 
      Height          =   615
      Left            =   4200
      TabIndex        =   5
      Top             =   3120
      Width           =   1695
   End
   Begin VB.TextBox txtname 
      Height          =   615
      Left            =   4200
      TabIndex        =   4
      Top             =   1920
      Width           =   2295
   End
   Begin VB.TextBox txtproductcode 
      Height          =   615
      Left            =   4200
      TabIndex        =   3
      Top             =   720
      Width           =   1695
   End
   Begin VB.Label lblprice 
      Caption         =   "Price"
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
      Left            =   600
      TabIndex        =   2
      Top             =   3120
      Width           =   3015
   End
   Begin VB.Label lblname 
      Caption         =   "Name"
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
      Left            =   600
      TabIndex        =   1
      Top             =   1920
      Width           =   3015
   End
   Begin VB.Label lblproductcode 
      Caption         =   "Enter 6 - Chracter Product Code"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   480
      TabIndex        =   0
      Top             =   720
      Width           =   3135
   End
   Begin VB.Menu mnufindpro 
      Caption         =   "Find Product"
   End
   Begin VB.Menu mnuexit 
      Caption         =   "E&xit"
   End
End
Attribute VB_Name = "frm26"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim productcodes(1 To 10) As String * 6, productnames(1 To 10) As String
Dim productprice(1 To 10) As Single
Dim element As Integer
Dim index As Integer
Dim productcode As String * 6
Dim found As Boolean

Private Sub cmdstoreproductcode_Click()
found = False
productcode = txtproductcode.Text
If element < 10 Then
index = 0
Do While (Not found) And (index <= element)
index = index + 1
If productcodes(index) = productcode Then
found = True
End If
Loop
If found Then
MsgBox ("You Have Already Used This Code. Enter The Another One")
Else
element = element + 1
productcodes(element) = productcode
productnames(element) = txtname.Text
productprice(element) = Val(txtprice.Text)
End If
Else
MsgBox ("Array Is Full")
End If
txtproductcode.Text = " "
txtname.Text = " "
txtproductcode.SetFocus
End Sub

Private Sub mnuexit_Click()
End
End Sub

Private Sub mnufindpro_Click()
productcode = txtproductcode.Text
index = 0
found = False
Do While (Not found) And (index <= 10)
index = index + 1
If productcodes(index) = productcode Then
found = True
txtname.Text = productnames(index)
txtprice.Text = Str(productprice(index))
End If
Loop
If Not found Then
MsgBox ("No Such Product Code Found")
End If
End Sub










