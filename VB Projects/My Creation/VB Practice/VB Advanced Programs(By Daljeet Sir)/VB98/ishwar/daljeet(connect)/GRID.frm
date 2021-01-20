VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command8 
      Caption         =   "exit"
      Height          =   495
      Left            =   4800
      TabIndex        =   13
      Top             =   5160
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "delete"
      Height          =   495
      Left            =   3480
      TabIndex        =   12
      Top             =   5160
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      Caption         =   "save"
      Height          =   495
      Left            =   2160
      TabIndex        =   11
      Top             =   5160
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "new"
      Height          =   495
      Left            =   840
      TabIndex        =   10
      Top             =   5160
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "last"
      Height          =   495
      Left            =   4800
      TabIndex        =   9
      Top             =   4440
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "next"
      Height          =   495
      Left            =   3360
      TabIndex        =   8
      Top             =   4440
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "previous"
      Height          =   495
      Left            =   2160
      TabIndex        =   7
      Top             =   4440
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "first"
      Height          =   495
      Left            =   1080
      TabIndex        =   6
      Top             =   4440
      Width           =   975
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   855
      Left            =   1440
      Top             =   3240
      Visible         =   0   'False
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   1508
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   2
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=MSDAORA.1;Password=tiger;User ID=scott;Persist Security Info=True"
      OLEDBString     =   "Provider=MSDAORA.1;Password=tiger;User ID=scott;Persist Security Info=True"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "STUDENT"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox Text3 
      DataField       =   "MARKS"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   4560
      TabIndex        =   5
      Top             =   2040
      Width           =   2415
   End
   Begin VB.TextBox Text2 
      DataField       =   "NAME"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   4680
      TabIndex        =   4
      Top             =   1200
      Width           =   2295
   End
   Begin VB.TextBox Text1 
      DataField       =   "ROLLNO"
      DataSource      =   "Adodc1"
      Height          =   375
      Left            =   4680
      TabIndex        =   3
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label Label3 
      Caption         =   "marks"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   2160
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "name"
      Height          =   495
      Left            =   720
      TabIndex        =   1
      Top             =   1080
      Width           =   2655
   End
   Begin VB.Label Label1 
      Caption         =   "roll number"
      Height          =   375
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   2655
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command3_Click()
    Adodc1.Recordset.MoveNext
     If (Adodc1.Recordset.EOF = True) Then
        Adodc1.Recordset.MoveLast
    End If

End Sub

Private Sub Command8_Click()
    
    End
End Sub


Private Sub Command1_Click()
    Adodc1.Recordset.MoveFirst
    
End Sub

Private Sub Command2_Click()
    Adodc1.Recordset.MovePrevious
     If (Adodc1.Recordset.BOF = True) Then
        Adodc1.Recordset.MoveFirst
    End If
    
End Sub

Private Sub Command4_Click()
            Adodc1.Recordset.MoveLast
End Sub

Private Sub Command5_Click()
    Adodc1.Recordset.AddNew
End Sub

Private Sub Command6_Click()
Adodc1.Recordset.Update
    MsgBox "record saved"
End Sub



Private Sub Command7_Click()
    Adodc1.Recordset.Delete
    Adodc1.Recordset.MoveNext
     If (Adodc1.Recordset.EOF = True) Then
        Adodc1.Recordset.MoveLast
    End If


    
End Sub



