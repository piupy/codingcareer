VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6480
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   7860
   LinkTopic       =   "Form1"
   ScaleHeight     =   6480
   ScaleWidth      =   7860
   StartUpPosition =   3  'Windows Default
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   7575
      Left            =   0
      TabIndex        =   2
      Top             =   480
      Width           =   11775
      _ExtentX        =   20770
      _ExtentY        =   13361
      _Version        =   393217
      ScrollBars      =   3
      TextRTF         =   $"Form1.frx":0000
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   6225
      Width           =   7860
      _ExtentX        =   13864
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   5
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "8/27/04"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   1
            Enabled         =   0   'False
            TextSave        =   "CAPS"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Text            =   "Press F1 to view the Help"
            TextSave        =   "Press F1 to view the Help"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            TextSave        =   "2:27 AM"
         EndProperty
         BeginProperty Panel5 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   480
      Top             =   720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   420
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7860
      _ExtentX        =   13864
      _ExtentY        =   741
      ButtonWidth     =   609
      ButtonHeight    =   582
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   6
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "new"
            Object.ToolTipText     =   "new"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "open"
            Object.ToolTipText     =   "open"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "save"
            Object.ToolTipText     =   "save"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "cut"
            Object.ToolTipText     =   "save"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "copy"
            Object.ToolTipText     =   "copy"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "paste"
            Object.ToolTipText     =   "paste"
            ImageIndex      =   6
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   4080
      Top             =   2520
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   6
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":00AE
            Key             =   "new"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":01C0
            Key             =   "open"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":02D2
            Key             =   "save"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":03E4
            Key             =   "cut"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":04F6
            Key             =   "copy"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0608
            Key             =   "paste"
         EndProperty
      EndProperty
   End
   Begin VB.Menu MNUFILE 
      Caption         =   "FILE "
      Begin VB.Menu mnunew 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuopen 
         Caption         =   "&Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnusave 
         Caption         =   "&Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuprint 
         Caption         =   "&Print"
         Shortcut        =   ^P
      End
      Begin VB.Menu mnuexit 
         Caption         =   "E&xit"
      End
   End
   Begin VB.Menu MNUEDIT 
      Caption         =   "EDIT"
      Begin VB.Menu mnucut 
         Caption         =   "Cu&t"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnucopy 
         Caption         =   "&Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnupaste 
         Caption         =   "&Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuselectall 
         Caption         =   "Select &All"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnudelete 
         Caption         =   "&Delete"
         Shortcut        =   ^D
      End
   End
   Begin VB.Menu mnuformat 
      Caption         =   "FORMAT"
      Begin VB.Menu mnufont 
         Caption         =   "&FONT"
         Shortcut        =   ^F
      End
      Begin VB.Menu mnucolor 
         Caption         =   "Co&lor"
         Begin VB.Menu mnubackcolor 
            Caption         =   "Bac&kcolor"
            Shortcut        =   ^K
         End
         Begin VB.Menu mnufontcolor 
            Caption         =   "Fontcolo&r"
            Shortcut        =   ^R
         End
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim files As Byte
Dim l As Integer
Const forreading = 1, forwriting = 2
Dim f, fs
Private Sub Form_Load()
    Set fs = CreateObject("scripting.filesystemobject")
    Form1.Caption = "Untitled"
    Toolbar1.Buttons(4).Enabled = False
    Toolbar1.Buttons(5).Enabled = False
End Sub

Private Sub mnubackcolor_Click()
    CommonDialog1.ShowColor
    RichTextBox1.BackColor = CommonDialog1.Color
End Sub

Private Sub mnucopy_Click()
    Clipboard.SetText (RichTextBox1.SelText)
End Sub

Private Sub mnucut_Click()
    Clipboard.SetText RichTextBox1.SelText
    RichTextBox1.SelText = ""
End Sub

Private Sub mnudelete_Click()
    RichTextBox1.SelText = ""
End Sub

Private Sub MNUEDIT_Click()
    If RichTextBox1.SelLength = 0 Then
        mnucut.Enabled = False
        mnucopy.Enabled = False
    Else
        mnucut.Enabled = True
        mnucopy.Enabled = True
    End If
End Sub

Private Sub mnuexit_Click()
    If RichTextBox1.Text <> "" Then
        ans = MsgBox("save current file ?", vbQuestion + vbYesNo)
        If ans = vbYes Then
            CommonDialog1.Filter = "All files(*.*)|*.*|TEXT File(*.txt)|*.txt"
            CommonDialog1.FilterIndex = 2
            CommonDialog1.ShowSave
            If CommonDialog1.FileName <> "" Then
                Set f = fs.createtextfile(CommonDialog1.FileName, True)
                f.write RichTextBox1.Text
                f.Close
            End If
        End If
    End If
    End
End Sub

Private Sub mnufont_Click()
    CommonDialog1.Flags = &H2 Or &H100
    CommonDialog1.ShowFont
    RichTextBox1.SelFontName = CommonDialog1.FontName
    RichTextBox1.SelFontSize = CommonDialog1.FontSize
    RichTextBox1.SelBold = CommonDialog1.FontBold
    RichTextBox1.SelItalic = CommonDialog1.FontItalic
    RichTextBox1.SelUnderline = CommonDialog1.FontStrikethru
    RichTextBox1.SelColor = CommonDialog1.Color
End Sub

Private Sub mnufontcolor_Click()
    CommonDialog1.ShowColor
    RichTextBox1.SelColor = CommonDialog1.Color
End Sub

Private Sub mnunew_Click()
    If RichTextBox1.Text <> "" Then
        ans = MsgBox("save current file ?", vbQuestion + vbYesNo)
        If ans = vbYes Then
            CommonDialog1.Filter = "All files(*.*)|*.*|TEXT File(*.txt)|*.txt"
            CommonDialog1.FilterIndex = 2
            CommonDialog1.ShowSave
            If CommonDialog1.FileName <> "" Then
                Set f = fs.createtextfile(CommonDialog1.FileName, True)
                f.write RichTextBox1.Text
                f.Close
            End If
        End If
    End If
    RichTextBox1.Text = ""
    mnusave.Enabled = False
End Sub

Private Sub mnuopen_Click()
    CommonDialog1.Filter = "All files(*.*)|*.*|TEXT File(*.txt)|*.txt"
    CommonDialog1.FilterIndex = 2
    If RichTextBox1.Text <> "" Then
        ans = MsgBox("save current file ?", vbQuestion + vbYesNo)
        If ans = vbYes Then
            CommonDialog1.ShowSave
            If CommonDialog1.FileName <> "" Then
                Set f = fs.createtextfile(CommonDialog1.FileName, True)
                f.write RichTextBox1.Text
                f.Close
            End If
        End If
    End If
    CommonDialog1.ShowOpen
    If CommonDialog1.FileName <> "" Then
        Set f = fs.opentextfile(CommonDialog1.FileName, forreading)
        RichTextBox1.Text = f.readall
        f.Close
        mnusave.Enabled = True
    End If
End Sub

Private Sub mnupaste_Click()
    RichTextBox1.SelText = Clipboard.GetText
End Sub

Private Sub mnuprint_Click()
    CommonDialog1.Copies = 2
    CommonDialog1.ShowPrinter
End Sub

Private Sub mnusave_Click()
    CommonDialog1.Filter = "All files(*.*)|*.*|TEXT File(*.txt)|*.txt"
    CommonDialog1.FilterIndex = 2
    CommonDialog1.ShowSave
    If CommonDialog1.FileName <> "" Then
        Set f = fs.createtextfile(CommonDialog1.FileName, True)
        f.write RichTextBox1.Text
        f.Close
    End If
End Sub

Private Sub mnuselectall_Click()
    RichTextBox1.SelStart = 0
    RichTextBox1.SelLength = Len(RichTextBox1.Text)
End Sub



Private Sub RichTextBox1_SelChange()
    If RichTextBox1.SelLength = 0 Then
        Toolbar1.Buttons(4).Enabled = False
        Toolbar1.Buttons(5).Enabled = False
    Else
        Toolbar1.Buttons(4).Enabled = True
        Toolbar1.Buttons(5).Enabled = True
    End If
End Sub

Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
    Select Case Button.Key
        Case Is = "new"
            If RichTextBox1.Text <> "" Then
                ans = MsgBox("save current file ?", vbQuestion + vbYesNo)
                If ans = vbYes Then
                    CommonDialog1.Filter = "All files(*.*)|*.*|TEXT File(*.txt)|*.txt"
                    CommonDialog1.FilterIndex = 2
                    CommonDialog1.ShowSave
                    If CommonDialog1.FileName <> "" Then
                        Set f = fs.createtextfile(CommonDialog1.FileName, True)
                        f.write RichTextBox1.Text
                        f.Close
                    End If
                End If
            End If
            RichTextBox1.Text = ""
            mnusave.Enabled = False
        Case Is = "open"
            CommonDialog1.Filter = "All files(*.*)|*.*|TEXT File(*.txt)|*.txt"
            CommonDialog1.FilterIndex = 2
            If RichTextBox1.Text <> "" Then
                ans = MsgBox("save current file ?", vbQuestion + vbYesNo)
                If ans = vbYes Then
                    CommonDialog1.ShowSave
                    If CommonDialog1.FileName <> "" Then
                        Set f = fs.createtextfile(CommonDialog1.FileName, True)
                        f.write RichTextBox1.Text
                        f.Close
                    End If
                End If
            End If
            CommonDialog1.ShowOpen
            If CommonDialog1.FileName <> "" Then
                Set f = fs.opentextfile(CommonDialog1.FileName, forreading)
                RichTextBox1.Text = f.readall
                f.Close
                mnusave.Enabled = True
            End If
        Case Is = "Save"
            CommonDialog1.Filter = "All files(*.*)|*.*|TEXT File(*.txt)|*.txt"
            CommonDialog1.FilterIndex = 2
            CommonDialog1.ShowSave
            If CommonDialog1.FileName <> "" Then
                Set f = fs.createtextfile(CommonDialog1.FileName, True)
                f.write RichTextBox1.Text
                f.Close
            End If
        Case Is = "cut"
            Clipboard.SetText RichTextBox1.SelText
            RichTextBox1.SelText = ""
        Case Is = "copy"
            Clipboard.SetText (RichTextBox1.SelText)
        Case Is = "paste"
            RichTextBox1.SelText = Clipboard.GetText
    End Select

End Sub

