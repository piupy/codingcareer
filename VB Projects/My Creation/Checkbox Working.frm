VERSION 5.00
Begin VB.Form Form6 
   BackColor       =   &H00404000&
   Caption         =   "Form6"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form6"
   ScaleHeight     =   8430
   ScaleWidth      =   15120
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command9 
      Caption         =   "Confirm"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   25
      Top             =   8400
      Width           =   1815
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Confirm"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   24
      Top             =   6240
      Width           =   1815
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Confirm"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   23
      Top             =   3960
      Width           =   1815
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Confirm"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   22
      Top             =   1560
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Continue"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   6960
      TabIndex        =   17
      Top             =   9960
      Width           =   3495
   End
   Begin VB.Frame Frame1 
      Caption         =   "List of Available Flights"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   9735
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   15495
      Begin VB.CommandButton Command5 
         Caption         =   "Jet Airways"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         TabIndex        =   21
         Top             =   7680
         Width           =   1815
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Air India"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         TabIndex        =   20
         Top             =   5520
         Width           =   1815
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Indigo"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         TabIndex        =   19
         Top             =   3240
         Width           =   1815
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Spicejet"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         TabIndex        =   18
         Top             =   840
         Width           =   1815
      End
      Begin VB.Frame Frame5 
         Caption         =   "Jet Airways"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1935
         Left            =   2280
         TabIndex        =   13
         Top             =   7320
         Width           =   12735
         Begin VB.CheckBox Check12 
            Caption         =   "Jet Airways 3 [ Wednesday( 10 p.m. ) , Thursday( 10 p.m. ) , Friday( 10 p.m.) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   16
            Top             =   1320
            Width           =   10455
         End
         Begin VB.CheckBox Check11 
            Caption         =   "Jet Airways 2 [Tuesday( 10 p.m. ) , Wednesday( 10 p.m. ) , Thursday( 10 p.m. ) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   15
            Top             =   840
            Width           =   9975
         End
         Begin VB.CheckBox Check10 
            Caption         =   "Jet Airways 1 [Monday( 10 p.m.) , Tuesday ( 10 p.m.) ,  Wednesday(10 p.m.) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   14
            Top             =   360
            Width           =   9615
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Air India Flights"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1935
         Left            =   2280
         TabIndex        =   9
         Top             =   5160
         Width           =   12735
         Begin VB.CheckBox Check9 
            Caption         =   "Air India 3 [ Wednesday( 6 p.m. ) , Thursday( 6 p.m. ) , Friday( 6 p.m.)  ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   12
            Top             =   1320
            Width           =   9735
         End
         Begin VB.CheckBox Check8 
            Caption         =   "Air India 2 [Tuesday( 6 p.m. ) , Wednesday( 6 p.m. ) , Thursday( 6 p.m. ) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   11
            Top             =   840
            Width           =   9735
         End
         Begin VB.CheckBox Check7 
            Caption         =   "Air India 1 [Monday( 6 p.m.) , Tuesday ( 6 p.m.) ,  Wednesday( 6 p.m.) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   10
            Top             =   360
            Width           =   8895
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Indigo Flights"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2175
         Left            =   2280
         TabIndex        =   5
         Top             =   2760
         Width           =   12735
         Begin VB.CheckBox Check6 
            Caption         =   "Indigo 3 [ Wednesday( 3 p.m. ) , Thursday( 3 p.m. ) , Friday( 3 p.m. ) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   8
            Top             =   1560
            Width           =   9135
         End
         Begin VB.CheckBox Check5 
            Caption         =   "Indigo 2 [Tuesday( 3 p.m. ) , Wednesday( 3 p.m. ) , Thursday( 3 p.m. ) ]"
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
            Left            =   480
            TabIndex        =   7
            Top             =   960
            Width           =   9255
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Indigo 1 [ Monday( 3 p.m. ) , Tuesday( 3 p.m. ) , Wednesday( 3 p.m.) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   480
            TabIndex        =   6
            Top             =   480
            Width           =   9255
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Spicejet Flights"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2055
         Left            =   2280
         TabIndex        =   1
         Top             =   480
         Width           =   12735
         Begin VB.CheckBox Check3 
            Caption         =   "Spicejet 3 [ Wednesday( 9 a.m. ) , Thursday( 9 a.m. ) , Friday( 9 a.m. ) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   360
            TabIndex        =   4
            Top             =   1320
            Width           =   9615
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Spicejet 2 [ Tuesday( 9 a.m. ) , Wednesday( 9 a.m. ) , Thursday( 9 a.m. ) ]"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   360
            TabIndex        =   3
            Top             =   960
            Width           =   9615
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Spicejet 1 [ Monday( 9 a.m.) , Tuesday ( 9 a.m.) ,  Wednesday( 9 a.m.) ] "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   360
            TabIndex        =   2
            Top             =   480
            Width           =   9015
         End
      End
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
Frame2.Visible = True
Command6.Visible = True
End Sub
Private Sub Command3_Click()
Frame3.Visible = True
Command7.Visible = True
End Sub
Private Sub Command4_Click()
Frame4.Visible = True
Command8.Visible = True
End Sub
Private Sub Command5_Click()
Frame5.Visible = True
Command9.Visible = True
End Sub
Private Sub Command6_Click()
If Check1.Value = Checked And Check2.Value = Checked And Check3.Value = Checked Then
MsgBox "You Have Selected All The Spicejet Flights"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command6.Enabled = False
Check1.Enabled = False
Check2.Enabled = False
Check3.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check1.Value = Checked And Check2.Value = Checked Then
MsgBox "You Have Selected Spicejet 1 and Spicejet 2"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command6.Enabled = False
Check1.Enabled = False
Check2.Enabled = False
Check3.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check2.Value = Checked And Check3.Value = Checked Then
MsgBox "You Have Selected Spicejet 2 and Spicejet 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command6.Enabled = False
Check1.Enabled = False
Check2.Enabled = False
Check3.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check1.Value = Checked And Check3.Value = Checked Then
MsgBox "You Have Selected Spicejet 1 and Spicejet 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command6.Enabled = False
Check1.Enabled = False
Check2.Enabled = False
Check3.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check1.Value = Checked Then
MsgBox "You Have Selected Spicejet 1"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command6.Enabled = False
Check1.Enabled = False
Check2.Enabled = False
Check3.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check2.Value = Checked Then
MsgBox "You Have Selected Spicejet 2"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command6.Enabled = False
Check1.Enabled = False
Check2.Enabled = False
Check3.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check3.Value = Checked Then
MsgBox "You Have Selected Spicejet 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command6.Enabled = False
Check1.Enabled = False
Check2.Enabled = False
Check3.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
Else: MsgBox "You Have Not Selected Any of The Spicejet Flights"
End If
End Sub
Private Sub Command7_Click()
If Check4.Value = Checked And Check5.Value = Checked And Check6.Value = Checked Then
MsgBox "You Have Selected All The Indigo Flights"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command7.Enabled = False
Check4.Enabled = False
Check5.Enabled = False
Check6.Enabled = False
Frame2.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command3.Enabled = False
Command2.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check4.Value = Checked And Check5.Value = Checked Then
MsgBox "You Have Selected Indigo 1 and Indigo 2"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command7.Enabled = False
Check4.Enabled = False
Check5.Enabled = False
Check6.Enabled = False
Frame2.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command3.Enabled = False
Command2.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check5.Value = Checked And Check6.Value = Checked Then
MsgBox "You Have Selected Indigo 2 and Indigo 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command7.Enabled = False
Check4.Enabled = False
Check5.Enabled = False
Check6.Enabled = False
Frame2.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command3.Enabled = False
Command2.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check4.Value = Checked And Check6.Value = Checked Then
MsgBox "You Have Selected Indigo 1 and Indigo 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command7.Enabled = False
Check4.Enabled = False
Check5.Enabled = False
Check6.Enabled = False
Frame2.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command3.Enabled = False
Command2.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check4.Value = Checked Then
MsgBox "You Have Selected Indigo 1"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command7.Enabled = False
Check4.Enabled = False
Check5.Enabled = False
Check6.Enabled = False
Frame2.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command3.Enabled = False
Command2.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check5.Value = Checked Then
MsgBox "You Have Selected Indigo 2"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command7.Enabled = False
Check4.Enabled = False
Check5.Enabled = False
Check6.Enabled = False
Frame2.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command3.Enabled = False
Command2.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
ElseIf Check6.Value = Checked Then
MsgBox "You Have Selected Indigo 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command7.Enabled = False
Check4.Enabled = False
Check5.Enabled = False
Check6.Enabled = False
Frame2.Enabled = False
Frame4.Enabled = False
Frame5.Enabled = False
Command3.Enabled = False
Command2.Enabled = False
Command4.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command8.Enabled = False
Command9.Enabled = False
End If
Else: MsgBox "You Have Not Selected Any of The Indigo Flights"
End If
End Sub

Private Sub Command8_Click()
If Check7.Value = Checked And Check8.Value = Checked And Check9.Value = Checked Then
MsgBox "You Have Selected All The Air India Flights"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command8.Enabled = False
Check7.Enabled = False
Check8.Enabled = False
Check9.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame5.Enabled = False
Command4.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command9.Enabled = False
End If
ElseIf Check7.Value = Checked And Check8.Value = Checked Then
MsgBox "You Have Selected Air India 1 and Air India 2"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command8.Enabled = False
Check7.Enabled = False
Check8.Enabled = False
Check9.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame5.Enabled = False
Command4.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command9.Enabled = False
End If
ElseIf Check8.Value = Checked And Check9.Value = Checked Then
MsgBox "You Have Selected Air India 2 and Air India 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command8.Enabled = False
Check7.Enabled = False
Check8.Enabled = False
Check9.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame5.Enabled = False
Command4.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command9.Enabled = False
End If
ElseIf Check7.Value = Checked And Check9.Value = Checked Then
MsgBox "You Have Selected Air India 1 and Air India 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command8.Enabled = False
Check7.Enabled = False
Check8.Enabled = False
Check9.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame5.Enabled = False
Command4.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command9.Enabled = False
End If
ElseIf Check7.Value = Checked Then
MsgBox "You Have Selected Air India 1"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command8.Enabled = False
Check7.Enabled = False
Check8.Enabled = False
Check9.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame5.Enabled = False
Command4.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command9.Enabled = False
End If
ElseIf Check8.Value = Checked Then
MsgBox "You Have Selected Air India 2"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command8.Enabled = False
Check7.Enabled = False
Check8.Enabled = False
Check9.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame5.Enabled = False
Command4.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command9.Enabled = False
End If
ElseIf Check9.Value = Checked Then
MsgBox "You Have Selected Air India 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command8.Enabled = False
Check7.Enabled = False
Check8.Enabled = False
Check9.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame5.Enabled = False
Command4.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command5.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command9.Enabled = False
End If
Else: MsgBox "You Have Not Selected Any of The Air India Flights"
End If
End Sub
Private Sub Command9_Click()
If Check10.Value = Checked And Check11.Value = Checked And Check12.Value = Checked Then
MsgBox "You Have Selected All The Jet Airways Flights"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command9.Enabled = False
Check10.Enabled = False
Check11.Enabled = False
Check12.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Command5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
End If
ElseIf Check10.Value = Checked And Check11.Value = Checked Then
MsgBox "You Have Selected Jet Airways 1 and Jet Airways 2"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command9.Enabled = False
Check10.Enabled = False
Check11.Enabled = False
Check12.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Command5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
End If
ElseIf Check11.Value = Checked And Check12.Value = Checked Then
MsgBox "You Have Selected Jet Airways 2 and Jet Airways 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command9.Enabled = False
Check10.Enabled = False
Check11.Enabled = False
Check12.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Command5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
End If
ElseIf Check10.Value = Checked And Check12.Value = Checked Then
MsgBox "You Have Selected Jet Airways 1 and Jet Airways 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command9.Enabled = False
Check10.Enabled = False
Check11.Enabled = False
Check12.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Command5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
End If
ElseIf Check10.Value = Checked Then
MsgBox "You Have Selected Jet Airways 1"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command9.Enabled = False
Check10.Enabled = False
Check11.Enabled = False
Check12.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Command5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
End If
ElseIf Check11.Value = Checked Then
MsgBox "You Have Selected Jet Airways 2"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command9.Enabled = False
Check10.Enabled = False
Check11.Enabled = False
Check12.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Command5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
End If
ElseIf Check12.Value = Checked Then
MsgBox "You Have Selected Jet Airways 3"
If (MsgBox("Are You Sure You Want To Confirm Your Flight ?", vbYesNo) = vbYes) Then
MsgBox "Your Flight Has Been Confirmed."
Command9.Enabled = False
Check10.Enabled = False
Check11.Enabled = False
Check12.Enabled = False
Frame2.Enabled = False
Frame3.Enabled = False
Frame4.Enabled = False
Command5.Enabled = False
Command2.Enabled = False
Command3.Enabled = False
Command4.Enabled = False
Command6.Enabled = False
Command7.Enabled = False
Command8.Enabled = False
End If
Else: MsgBox "You Have Not Selected Any of The Jet Airways Flights"
End If
End Sub
Private Sub Form_Activate()
Frame2.Visible = False
Frame3.Visible = False
Frame4.Visible = False
Frame5.Visible = False
Command6.Visible = False
Command7.Visible = False
Command8.Visible = False
Command9.Visible = False
End Sub

