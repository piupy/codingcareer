VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form2 
   BackColor       =   &H00C0FFFF&
   Caption         =   "Songs"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.ComboBox Combo2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   10200
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1680
      Width           =   4095
   End
   Begin VB.ComboBox Combo1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   4920
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   1680
      Width           =   4095
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Videos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   10800
      TabIndex        =   7
      Top             =   1320
      Width           =   2415
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Audios"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   6
      Top             =   1320
      Width           =   2415
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Caption         =   "Songs-->"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   4
      Top             =   1680
      Width           =   1815
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      Caption         =   "Current Song :----->"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   2
      Top             =   360
      Width           =   3375
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7800
      TabIndex        =   1
      Top             =   360
      Width           =   3375
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   4710
      Left            =   1080
      TabIndex        =   0
      Top             =   3000
      Width           =   12255
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
      _cx             =   21616
      _cy             =   8308
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Click()
If Combo1.ListIndex = 0 Then
WindowsMediaPlayer1.URL = App.Path & "\Angreji Beat.mp3"
Label1.Caption = Combo1.Text
ElseIf Combo1.ListIndex = 1 Then
WindowsMediaPlayer1.URL = App.Path & "\Brown Rang.mp3"
Label1.Caption = Combo1.Text
ElseIf Combo1.ListIndex = 2 Then
WindowsMediaPlayer1.URL = App.Path & "\Haye Mera Dil.mp3"
Label1.Caption = Combo1.Text
ElseIf Combo1.ListIndex = 3 Then
WindowsMediaPlayer1.URL = App.Path & "\Main Nikla Gaddi Leke.mp3"
Label1.Caption = Combo1.Text
ElseIf Combo1.ListIndex = 4 Then
WindowsMediaPlayer1.URL = App.Path & "\Manali Trance.mp3"
Label1.Caption = Combo1.Text
ElseIf Combo1.ListIndex = 5 Then
WindowsMediaPlayer1.URL = App.Path & "\Rain Over Me.mp3"
Label1.Caption = Combo1.Text
ElseIf Combo1.ListIndex = 6 Then
WindowsMediaPlayer1.URL = App.Path & "\Tera Hone Laga Hoon.mp3"
Label1.Caption = Combo1.Text
ElseIf Combo1.ListIndex = 7 Then
WindowsMediaPlayer1.URL = App.Path & "\Tu Jaane Na.mp3"
Label1.Caption = Combo1.Text
End If
End Sub

Private Sub Combo2_Click()
If Combo2.ListIndex = 0 Then
WindowsMediaPlayer1.URL = "C:\College\Gippy Grewal\Cutt Sleve.mp4"
Label1.Caption = Combo2.Text
ElseIf Combo2.ListIndex = 1 Then
WindowsMediaPlayer1.URL = "C:\College\Gippy Grewal\Ghar Di Sharab.mp4"
Label1.Caption = Combo2.Text
ElseIf Combo2.ListIndex = 2 Then
WindowsMediaPlayer1.URL = "C:\College\Gippy Grewal\Hello Hello.mp4"
Label1.Caption = Combo2.Text
ElseIf Combo2.ListIndex = 3 Then
WindowsMediaPlayer1.URL = "C:\College\Gippy Grewal\Marjawa.mp4"
Label1.Caption = Combo2.Text
ElseIf Combo2.ListIndex = 4 Then
WindowsMediaPlayer1.URL = "C:\College\Gippy Grewal\Mulahjedaariyan.mp4"
Label1.Caption = Combo2.Text
ElseIf Combo2.ListIndex = 5 Then
WindowsMediaPlayer1.URL = "C:\College\Gippy Grewal\Shut Up.mp4"
Label1.Caption = Combo2.Text
End If
End Sub

Private Sub Form_Load()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\d.mdb"
con.Open
rst.Open "select * from songs order by sname", con, adOpenDynamic, adLockOptimistic, adCmdText
rst.MoveFirst
While rst.EOF <> True
Combo1.AddItem rst!sname
rst.MoveNext
Wend
rst.Close
con.Close
Combo2.AddItem "Cutt Sleve"
Combo2.AddItem "Ghar Di Sharab"
Combo2.AddItem "Hello Hello"
Combo2.AddItem "Marjawa"
Combo2.AddItem "Mulahjedaariyan"
Combo2.AddItem "Shut Up"
End Sub
