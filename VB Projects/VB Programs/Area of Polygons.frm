VERSION 5.00
Begin VB.Form Form9 
   BackColor       =   &H00FFFFC0&
   Caption         =   "Form9"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   FillColor       =   &H00FFFFFF&
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form9"
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command6 
      Caption         =   "Click Here To Find The Cimcumference of Circle"
      Height          =   975
      Left            =   5040
      TabIndex        =   5
      Top             =   3720
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Click Here To Find The Area of Circle"
      Height          =   735
      Left            =   2520
      TabIndex        =   4
      Top             =   3720
      Width           =   1935
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Click Here To Find The Perimeter of Rectangle"
      Height          =   855
      Left            =   5040
      TabIndex        =   3
      Top             =   2040
      Width           =   1935
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Click Here To Find The Area of Rectangle"
      Height          =   855
      Left            =   2520
      TabIndex        =   2
      Top             =   2040
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Click Here To Find The Perimeter Of Square"
      Height          =   855
      Left            =   5160
      TabIndex        =   1
      Top             =   600
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Find The Area Of Square"
      Height          =   855
      Left            =   2640
      TabIndex        =   0
      Top             =   600
      Width           =   1695
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00FFC0C0&
      BackStyle       =   1  'Opaque
      FillStyle       =   7  'Diagonal Cross
      Height          =   1095
      Left            =   600
      Shape           =   3  'Circle
      Top             =   3480
      Width           =   1335
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00C0C0FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H00808000&
      FillStyle       =   4  'Upward Diagonal
      Height          =   855
      Left            =   480
      Top             =   2040
      Width           =   1455
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00C0FFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H000000FF&
      BorderWidth     =   2
      FillColor       =   &H00800080&
      FillStyle       =   2  'Horizontal Line
      Height          =   855
      Left            =   0
      Shape           =   1  'Square
      Top             =   600
      Width           =   2775
   End
End
Attribute VB_Name = "Form9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Const pi = 3.14
Dim s As Single, l As Single, b As Single, c As Single
Option Explicit


Private Sub Command1_Click()
s = InputBox("Please Enter The Side Of Square")
MsgBox "Area of Square Is " & (s * s)

End Sub

Private Sub Command2_Click()
s = InputBox("Please Enter The Side Of Square")
MsgBox "Perimeter of Square Is " & (4 * s)
End Sub

Private Sub Command3_Click()
l = InputBox("Enter The Length of Rectangle")
b = InputBox("Enter The Breadth of Rectangle")
MsgBox "The Area of Rectangle Is " & (l * b)
End Sub

Private Sub Command4_Click()
l = InputBox("Enter The Length of Rectangle")
b = InputBox("Enter The Breadth of Rectangle")
c = 2 * (l + b)

MsgBox "The Perimeter of Rectangle Is " & c

End Sub

Private Sub Command5_Click()
s = InputBox("Enter The Radius of Circle")
MsgBox "The Area of Circle Is " & (pi * s * s)
End Sub

Private Sub Command6_Click()
s = InputBox("Enter The Radius of Circle")
MsgBox "The Circumference of Circle Is " & (2 * pi * s)
End Sub
