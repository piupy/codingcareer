VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form Form8 
   Caption         =   "Form8"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form8"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "Save"
      Height          =   855
      Left            =   4440
      TabIndex        =   1
      Top             =   4080
      Width           =   2175
   End
   Begin MSMask.MaskEdBox MaskEdBox1 
      Height          =   975
      Left            =   3000
      TabIndex        =   0
      Top             =   2040
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   1720
      _Version        =   393216
      MaxLength       =   11
      Mask            =   "##########"
      PromptChar      =   " "
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
con.ConnectionString = "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
con.Open
con.Execute ("insert into mask values('" & MaskEdBox1.Text & "')")
MsgBox "Telephone Number Successfully Saved", vbInformation
con.Close
End Sub
