VERSION 5.00
Begin VB.Form Form14 
   Caption         =   "Form14"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form14"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Click Here To Get The Output"
      Height          =   495
      Left            =   3840
      TabIndex        =   17
      Top             =   3360
      Width           =   2175
   End
   Begin VB.OptionButton Option17 
      Caption         =   "Replace Function"
      Height          =   255
      Left            =   3360
      TabIndex        =   16
      Top             =   2400
      Width           =   2535
   End
   Begin VB.OptionButton Option16 
      Caption         =   "In String Reverse Function"
      Height          =   195
      Left            =   3360
      TabIndex        =   15
      Top             =   1920
      Width           =   2535
   End
   Begin VB.OptionButton Option15 
      Caption         =   "Instring Function"
      Height          =   195
      Left            =   3360
      TabIndex        =   14
      Top             =   1320
      Width           =   2415
   End
   Begin VB.OptionButton Option14 
      Caption         =   "Trim Function"
      Height          =   195
      Left            =   3360
      TabIndex        =   13
      Top             =   960
      Width           =   2295
   End
   Begin VB.OptionButton Option13 
      Caption         =   "Right Trim Function"
      Height          =   195
      Left            =   3360
      TabIndex        =   12
      Top             =   600
      Width           =   2295
   End
   Begin VB.OptionButton Option12 
      Caption         =   "Left Trim Function"
      Height          =   195
      Left            =   3360
      TabIndex        =   11
      Top             =   240
      Width           =   2175
   End
   Begin VB.OptionButton Option11 
      Caption         =   "Character Function"
      Height          =   195
      Left            =   360
      TabIndex        =   10
      Top             =   4080
      Width           =   2175
   End
   Begin VB.OptionButton Option10 
      Caption         =   "ASCII Function"
      Height          =   195
      Left            =   360
      TabIndex        =   9
      Top             =   3720
      Width           =   1935
   End
   Begin VB.OptionButton Option9 
      Caption         =   "String Reverse Function"
      Height          =   195
      Left            =   360
      TabIndex        =   8
      Top             =   3360
      Width           =   2655
   End
   Begin VB.OptionButton Option8 
      Caption         =   "Space Function"
      Height          =   195
      Left            =   360
      TabIndex        =   7
      Top             =   3000
      Width           =   2535
   End
   Begin VB.OptionButton Option7 
      Caption         =   "String Function"
      Height          =   195
      Left            =   360
      TabIndex        =   6
      Top             =   2640
      Width           =   2535
   End
   Begin VB.OptionButton Option6 
      Caption         =   "LowerCase Function"
      Height          =   195
      Left            =   360
      TabIndex        =   5
      Top             =   2280
      Width           =   2415
   End
   Begin VB.OptionButton Option5 
      Caption         =   "Uppercase Function"
      Height          =   195
      Left            =   360
      TabIndex        =   4
      Top             =   1920
      Width           =   2295
   End
   Begin VB.OptionButton Option4 
      Caption         =   "Right Function"
      Height          =   195
      Left            =   360
      TabIndex        =   3
      Top             =   1440
      Width           =   2655
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Left Function"
      Height          =   195
      Left            =   360
      TabIndex        =   2
      Top             =   1080
      Width           =   2535
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Mid Function"
      Height          =   195
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   2415
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Length Function"
      Height          =   195
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   2175
   End
End
Attribute VB_Name = "Form14"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As String, b As Integer, c As Integer, d As String, e As Integer, f As String
Private Sub Command1_Click()
If Option1.Value = True Then
a = InputBox("Enter A String")
MsgBox "Your String Has " & Len(a) & " Characters "
ElseIf Option2.Value = True Then
a = InputBox("Enter A String")
b = InputBox("Enter The Index of Character From Where You Want The String To Start With ")
c = InputBox("Enter The Index of The Character Till Where You Want The String")
MsgBox "The String From " & b & "th Character to " & c & "th Character is " & Mid(a, b, c)
ElseIf Option3.Value = True Then
a = InputBox("Enter The String")
b = InputBox("Enter The Index of Character Uptill You Want The String")
MsgBox "The Trimmed String uptil " & b & "th Character is " & Left(a, b)
ElseIf Option4.Value = True Then
a = InputBox("Enter A String")
b = InputBox("Enter The Index Of Character From Where You Want The Trimmed String")
MsgBox "The Trimmed String From " & b & "th Character From The Last Till The End Is " & Right(a, b)
ElseIf Option5.Value = True Then
a = InputBox("Enter A String")
MsgBox "The String In Uppercase Letters Is " & UCase(a)
ElseIf Option6.Value = True Then
a = InputBox("Enter A String")
MsgBox "The String In Lowercase Letters Is " & LCase(a)
ElseIf Option7.Value = True Then
a = InputBox("Enter A Character")
b = InputBox("Enter The Number of Times You Want That Character")
MsgBox "The Character upto " & b & " Number Of Times Is " & String(b, a)
ElseIf Option8.Value = True Then
a = InputBox("Enter The First String")
d = InputBox("Enter The Second String")
c = InputBox("Enter The Number Of Space Bars You Want In Your String")
MsgBox "The String With " & c & " Number Of Space Bars Is " & a & Space(c) & d
ElseIf Option9.Value = True Then
a = InputBox("Enter A String")
MsgBox "The Reverse String Is " & StrReverse(a)
ElseIf Option10.Value = True Then
a = InputBox("Enter A Character")
MsgBox "The ASCII Value of " & a & " Is " & Asc(a)
ElseIf Option11.Value = True Then
a = InputBox("Enter The ASCII Value Of A Character ")
MsgBox "The Character With ASCII Value " & a & " Is " & Chr(a)
ElseIf Option12.Value = True Then
a = InputBox("Enter A String")
MsgBox LTrim(a)
ElseIf Option13.Value = True Then
a = InputBox("Enter A String")
MsgBox RTrim(a)
ElseIf Option14.Value = True Then
a = InputBox("Enter A String")
MsgBox "The String After Trimming is " & Trim(a)
ElseIf Option15.Value = True Then
a = InputBox("Enter A String")
d = InputBox("Enter The Character You Want To Search In The String")
e = InputBox("Ente the Index Of Character From Where You Want The Searching To Be Started")
MsgBox "The Character " & d & " Is Present At The Position " & InStr(e, a, d, 1)
ElseIf Option16.Value = True Then
a = InputBox("Enter A String")
d = InputBox("Enter The Character You Want To Search In The String")
e = InputBox("Enter The Index Of Character From Where You Want The Searching To Be Started")
MsgBox "The Character " & d & " Is Present At The Position " & InStrRev(a, d, , 1)
ElseIf Option17.Value = True Then
a = InputBox("Enter A String")
d = InputBox("Enter Which You Want To Replace")
f = InputBox("Enter By Which You Want To Replace The Character")
MsgBox "The String " & a & " Has Now Been Replaced By The String " & Replace(a, d, f, , , 1)
End If
End Sub

