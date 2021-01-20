VERSION 5.00
Begin VB.Form frm11 
   Caption         =   "OLE"
   ClientHeight    =   6210
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   7260
   LinkTopic       =   "Form1"
   ScaleHeight     =   6210
   ScaleWidth      =   7260
   StartUpPosition =   3  'Windows Default
   Begin VB.OLE OLE1 
      Class           =   "Paint.Picture"
      Height          =   4455
      Left            =   120
      OleObjectBlob   =   "frm11.frx":0000
      TabIndex        =   0
      Top             =   1560
      Width           =   6975
   End
   Begin VB.Menu mnufile 
      Caption         =   "&File"
      Begin VB.Menu mnunew 
         Caption         =   "New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuopen 
         Caption         =   "Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnusave 
         Caption         =   "Save"
         Shortcut        =   ~S
      End
      Begin VB.Menu mnusaveas 
         Caption         =   "Save As ......"
      End
      Begin VB.Menu mnuprintpre 
         Caption         =   "Print Preview"
      End
      Begin VB.Menu mnupgsetup 
         Caption         =   "Page Setup ......."
      End
      Begin VB.Menu mnuprint 
         Caption         =   "Print ....."
         Shortcut        =   ^P
      End
      Begin VB.Menu mnusend 
         Caption         =   "Send ......"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu mnuedit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuundo 
         Caption         =   "Undo"
         Shortcut        =   ^Z
      End
      Begin VB.Menu mnurepeat 
         Caption         =   "Repeat"
         Shortcut        =   ^Y
      End
      Begin VB.Menu mnucut 
         Caption         =   "Cut"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnucopy 
         Caption         =   "Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnupaste 
         Caption         =   "Paste"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuclrsel 
         Caption         =   "Clear Selection"
         Shortcut        =   {DEL}
      End
      Begin VB.Menu mnuselall 
         Caption         =   "Select All"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnucopyto 
         Caption         =   "Copy To ....."
      End
      Begin VB.Menu mnupastefrom 
         Caption         =   "Paste From ....."
      End
   End
   Begin VB.Menu mnuview 
      Caption         =   "&View"
      Begin VB.Menu mnutoolbox 
         Caption         =   "Tool Box"
         Shortcut        =   ~T
      End
      Begin VB.Menu mnucolorbox 
         Caption         =   "Color Box"
         Shortcut        =   ~L
      End
      Begin VB.Menu mnustatusbar 
         Caption         =   "Status Bar"
      End
      Begin VB.Menu mnutexttoolbar 
         Caption         =   "Text Toolbar"
      End
      Begin VB.Menu mnuzoom 
         Caption         =   "Zoom"
         Begin VB.Menu mnunormalsize 
            Caption         =   "Normal Size"
         End
         Begin VB.Menu mnulargesize 
            Caption         =   "Large Size"
         End
         Begin VB.Menu mnucustom 
            Caption         =   "Custom ......."
         End
         Begin VB.Menu mnushowgrid 
            Caption         =   "Show &Grid "
            Shortcut        =   ^G
         End
         Begin VB.Menu mnushowthumbnail 
            Caption         =   "Show &Thumbnail"
         End
      End
      Begin VB.Menu mnuviewbitmap 
         Caption         =   "View Bitmap"
         Shortcut        =   ~F
      End
   End
   Begin VB.Menu mnuimage 
      Caption         =   "&Image"
      Begin VB.Menu mnufliprotate 
         Caption         =   "Flip/Rotate ....."
         Shortcut        =   ^R
      End
      Begin VB.Menu mnustrechskrew 
         Caption         =   "Strech/Skrew ......"
         Shortcut        =   ^W
      End
      Begin VB.Menu mnuinvertcol 
         Caption         =   "Invert Colors"
         Shortcut        =   ^I
      End
      Begin VB.Menu mnuattri 
         Caption         =   "Attributes ....."
         Shortcut        =   ^E
      End
      Begin VB.Menu mnuclrimage 
         Caption         =   "Clear Image"
      End
      Begin VB.Menu mnudrawopaque 
         Caption         =   "Draw Opaque"
      End
   End
   Begin VB.Menu mnucolors 
      Caption         =   "&Colors"
      Begin VB.Menu mnueditcol 
         Caption         =   "Edit Colors ........"
      End
   End
   Begin VB.Menu mnuhelp 
      Caption         =   "&Help"
      Begin VB.Menu mnuhelptopics 
         Caption         =   "&Help Topics"
      End
      Begin VB.Menu mnuaboutpaint 
         Caption         =   "&About Paint"
      End
   End
End
Attribute VB_Name = "frm11"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
