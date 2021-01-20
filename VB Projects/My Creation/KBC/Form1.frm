VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form1 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   8430
   ScaleWidth      =   11760
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFFFC0&
      Caption         =   "PREVIOUS"
      Height          =   615
      Left            =   3495
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   7320
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00FFFFC0&
      Caption         =   "NEXT"
      Height          =   615
      Left            =   5280
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   7335
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFC0&
      Caption         =   "CHOICES"
      Height          =   3735
      Left            =   480
      TabIndex        =   1
      Top             =   3240
      Width           =   11175
      Begin VB.OptionButton Option4 
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   5
         Top             =   2640
         Width           =   10695
      End
      Begin VB.OptionButton Option3 
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   4
         Top             =   1920
         Width           =   10695
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   3
         Top             =   1200
         Width           =   10695
      End
      Begin VB.OptionButton Option1 
         BackColor       =   &H00FFFFC0&
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   240
         TabIndex        =   2
         Top             =   480
         Width           =   10695
      End
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   975
      Left            =   2520
      TabIndex        =   10
      Top             =   4560
      Visible         =   0   'False
      Width           =   5775
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   10186
      _cy             =   1720
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9600
      TabIndex        =   9
      Top             =   2160
      Width           =   1815
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFC0&
      Caption         =   "TOTAL MARKS"
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9240
      TabIndex        =   8
      Top             =   1800
      Width           =   2415
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFC0&
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   480
      TabIndex        =   0
      Top             =   240
      Width           =   15015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim total As Integer


Private Sub Command2_Click()
Option1.Enabled = True
Option2.Enabled = True
Option3.Enabled = True
Option4.Enabled = True
Option1.BackColor = &HFFFFC0
Option2.BackColor = &HFFFFC0
Option3.BackColor = &HFFFFC0
Option4.BackColor = &HFFFFC0

If rst.EOF <> True Then
rst.MoveNext
ans.MoveNext
Label1.Caption = rst!KQ
Option1.Caption = rst!KO1
Option2.Caption = rst!KO2
Option3.Caption = rst!KO3
Option4.Caption = rst!KO4
Else: MsgBox "Last Question", vbCritical, "KBC"
End If
End Sub

Private Sub Command3_Click()
Option1.Enabled = True
Option2.Enabled = True
Option3.Enabled = True
Option4.Enabled = True
If rst.BOF = True Then
MsgBox "First Question", vbCritical, "KBC"
Else: rst.MovePrevious
ans.MovePrevious
Label1.Caption = rst!KQ
Option1.Caption = rst!KO1
Option2.Caption = rst!KO2
Option3.Caption = rst!KO3
Option4.Caption = rst!KO4
End If
End Sub

Private Sub Form_Load()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\d.mdb"
con.Open
rst.Open "select * from t", con, adOpenDynamic, adLockOptimistic, adCmdText
ans.Open "select ka from t", con, adOpenDynamic, adLockOptimistic, adCmdText
rst.MoveFirst
ans.MoveFirst
Label1.Caption = rst!KQ
Option1.Caption = rst!KO1
Option2.Caption = rst!KO2
Option3.Caption = rst!KO3
Option4.Caption = rst!KO4
Option1.Value = False
Option2.Value = False
Option3.Value = False
Option4.Value = False
End Sub

Private Sub Option1_Click()
If StrComp(Option1.Caption, ans(0)) = 0 Then
total = total + 4
Option1.BackColor = &HFF00&
Option2.BackColor = &H8080FF
Option3.BackColor = &H8080FF
Option4.BackColor = &H8080FF
Label3.Caption = total
WindowsMediaPlayer1.URL = App.Path & "\KBC.mp3"
MsgBox "BILKUL SAHI JAWAB HAI", vbInformation, "KBC"
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option4.Value = False
Else: total = total - 1
MsgBox "YE GALAT JAWAAB HAI", vbCritical, "KBC"

Option1.BackColor = &H8080FF      ''''''''''''''''''''' Option 1 is incorrect

    If StrComp(Option2.Caption, ans(0)) = 0 Then
    Option2.BackColor = &HFF00&
    Option3.BackColor = &H8080FF
    Option4.BackColor = &H8080FF
    ElseIf StrComp(Option3.Caption, ans(0)) = 0 Then
    Option3.BackColor = &HFF00&
    Option2.BackColor = &H8080FF
    Option4.BackColor = &H8080FF
    Else: Option4.BackColor = &HFF00&
    Option2.BackColor = &H8080FF
    Option3.BackColor = &H8080FF
    End If
    
Label3.Caption = total
WindowsMediaPlayer1.URL = App.Path & "\KBC.mp3"
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option4.Value = False
End If

End Sub

Private Sub Option2_Click()
If StrComp(Option2.Caption, ans(0)) = 0 Then
total = total + 4
Option2.BackColor = &HFF00&
Option1.BackColor = &H8080FF
Option3.BackColor = &H8080FF
Option4.BackColor = &H8080FF
Label3.Caption = total
WindowsMediaPlayer1.URL = App.Path & "\KBC.mp3"
MsgBox "BILKUL SAHI JAWAB HAI", vbInformation, "KBC"
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option4.Value = False
Else: total = total - 1
MsgBox "YE GALAT JAWAAB HAI", vbCritical, "KBC"

Option2.BackColor = &H8080FF      ''''''''''''''''''''' Option 1 is incorrect

    If StrComp(Option1.Caption, ans(0)) = 0 Then
    Option1.BackColor = &HFF00&
    Option3.BackColor = &H8080FF
    Option4.BackColor = &H8080FF
    ElseIf StrComp(Option3.Caption, ans(0)) = 0 Then
    Option3.BackColor = &HFF00&
    Option1.BackColor = &H8080FF
    Option4.BackColor = &H8080FF
    Else: Option4.BackColor = &HFF00&
    Option1.BackColor = &H8080FF
    Option3.BackColor = &H8080FF
    End If
    
Label3.Caption = total
WindowsMediaPlayer1.URL = App.Path & "\KBC.mp3"
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option4.Value = False
End If
End Sub

Private Sub Option3_Click()
If StrComp(Option3.Caption, ans(0)) = 0 Then
total = total + 4
Option3.BackColor = &HFF00&
Option2.BackColor = &H8080FF
Option1.BackColor = &H8080FF
Option4.BackColor = &H8080FF
Label3.Caption = total
WindowsMediaPlayer1.URL = App.Path & "\KBC.mp3"
MsgBox "BILKUL SAHI JAWAB HAI", vbInformation, "KBC"
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option4.Value = False
Else: total = total - 1
MsgBox "YE GALAT JAWAAB HAI", vbCritical, "KBC"

Option3.BackColor = &H8080FF      ''''''''''''''''''''' Option 1 is incorrect

    If StrComp(Option2.Caption, ans(0)) = 0 Then
    Option2.BackColor = &HFF00&
    Option1.BackColor = &H8080FF
    Option4.BackColor = &H8080FF
    ElseIf StrComp(Option1.Caption, ans(0)) = 0 Then
    Option1.BackColor = &HFF00&
    Option2.BackColor = &H8080FF
    Option4.BackColor = &H8080FF
    Else: Option4.BackColor = &HFF00&
    Option2.BackColor = &H8080FF
    Option1.BackColor = &H8080FF
    End If
    
Label3.Caption = total
WindowsMediaPlayer1.URL = App.Path & "\KBC.mp3"
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option4.Value = False
End If

End Sub

Private Sub Option4_Click()
If StrComp(Option4.Caption, ans(0)) = 0 Then
total = total + 4
Option4.BackColor = &HFF00&
Option2.BackColor = &H8080FF
Option3.BackColor = &H8080FF
Option1.BackColor = &H8080FF
Label3.Caption = total
WindowsMediaPlayer1.URL = App.Path & "\KBC.mp3"
MsgBox "BILKUL SAHI JAWAB HAI", vbInformation, "KBC"
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option4.Value = False
Else: total = total - 1
MsgBox "YE GALAT JAWAAB HAI", vbCritical, "KBC"

Option4.BackColor = &H8080FF      ''''''''''''''''''''' Option 1 is incorrect

    If StrComp(Option2.Caption, ans(0)) = 0 Then
    Option2.BackColor = &HFF00&
    Option3.BackColor = &H8080FF
    Option1.BackColor = &H8080FF
    ElseIf StrComp(Option3.Caption, ans(0)) = 0 Then
    Option3.BackColor = &HFF00&
    Option2.BackColor = &H8080FF
    Option1.BackColor = &H8080FF
    Else: Option1.BackColor = &HFF00&
    Option2.BackColor = &H8080FF
    Option3.BackColor = &H8080FF
    End If
    
Label3.Caption = total
WindowsMediaPlayer1.URL = App.Path & "\KBC.mp3"
Option1.Enabled = False
Option2.Enabled = False
Option3.Enabled = False
Option4.Enabled = False
Option4.Value = False
End If

End Sub
