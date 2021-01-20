VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin MSFlexGridLib.MSFlexGrid Itemdata 
      Height          =   2175
      Left            =   0
      TabIndex        =   9
      Top             =   4560
      Width           =   11895
      _ExtentX        =   20981
      _ExtentY        =   3836
      _Version        =   393216
      Rows            =   7
      Cols            =   13
      BackColor       =   12615935
      ForeColorSel    =   12615935
   End
   Begin VB.ComboBox monthname 
      Height          =   315
      Left            =   3240
      TabIndex        =   8
      Top             =   2160
      Width           =   2055
   End
   Begin VB.ComboBox itemname 
      Height          =   315
      Left            =   3240
      TabIndex        =   7
      Top             =   1440
      Width           =   2055
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      Height          =   615
      Left            =   6240
      TabIndex        =   6
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add"
      Height          =   615
      Left            =   6240
      TabIndex        =   5
      Top             =   1320
      Width           =   1095
   End
   Begin VB.TextBox sale 
      Height          =   375
      Left            =   3240
      TabIndex        =   4
      Top             =   3000
      Width           =   1935
   End
   Begin VB.Label Label4 
      Caption         =   "Sales"
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   3120
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "Month"
      Height          =   255
      Left            =   600
      TabIndex        =   2
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Item Name"
      Height          =   255
      Left            =   600
      TabIndex        =   1
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Flexgrid Application"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2280
      TabIndex        =   0
      Top             =   120
      Width           =   3855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim arr(11) As String
Dim item(5) As String

Private Sub Command1_Click()
    Itemdata.Row = itemname.ListIndex + 1
    Itemdata.Col = monthname.ListIndex + 1
    Itemdata.Text = Str(Val(Itemdata.Text) + Val(sale.Text))
End Sub

Private Sub Command2_Click()
    End
End Sub

Private Sub Form_Load()
    Dim i As Integer
    item(0) = "Stationary"
    item(1) = "Groceries"
    item(2) = "Milk Products"
    item(3) = "Confectionaries"
    item(4) = "House Hold Items"
    item(5) = "Toys"
    
    arr(0) = "Jan"
    arr(1) = "Feb"
    arr(2) = "Mar"
    arr(3) = "Apr"
    arr(4) = "May"
    arr(5) = "Jun"
    arr(6) = "Jul"
    arr(7) = "Aug"
    arr(8) = "Sept"
    arr(9) = "Oct"
    arr(10) = "Nov"
    arr(11) = "Dec"
    
    Itemdata.Row = 0
    For i = 0 To 11
        Itemdata.Col = i + 1
        Itemdata.Text = arr(i)
        monthname.AddItem arr(i)
    Next
    
    Itemdata.Col = 0
    For i = 0 To 5
        Itemdata.Row = i + 1
        Itemdata.Text = item(i)
        itemname.AddItem item(i)
    Next
    
End Sub
