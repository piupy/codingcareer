VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command10 
      Caption         =   "confirm"
      Height          =   615
      Left            =   2880
      TabIndex        =   17
      Top             =   4320
      Width           =   1695
   End
   Begin VB.CommandButton Command9 
      Caption         =   " close the connection"
      Height          =   615
      Left            =   7920
      TabIndex        =   16
      Top             =   4920
      Width           =   1695
   End
   Begin VB.CommandButton Command8 
      Caption         =   "open the connection"
      Height          =   615
      Left            =   7920
      TabIndex        =   15
      Top             =   4320
      Width           =   1695
   End
   Begin VB.TextBox Text4 
      Height          =   615
      Left            =   4440
      TabIndex        =   11
      Top             =   2520
      Width           =   1815
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   4440
      TabIndex        =   10
      Top             =   1920
      Width           =   1815
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   4440
      TabIndex        =   9
      Top             =   1320
      Width           =   1815
   End
   Begin VB.CommandButton Command7 
      Caption         =   "last"
      Height          =   615
      Left            =   6240
      TabIndex        =   8
      Top             =   4920
      Width           =   1695
   End
   Begin VB.CommandButton Command6 
      Caption         =   "next"
      Height          =   615
      Left            =   4560
      TabIndex        =   7
      Top             =   4920
      Width           =   1695
   End
   Begin VB.CommandButton Command5 
      Caption         =   "previous"
      Height          =   615
      Left            =   2880
      TabIndex        =   6
      Top             =   4920
      Width           =   1695
   End
   Begin VB.CommandButton Command4 
      Caption         =   "first"
      Height          =   615
      Left            =   1200
      TabIndex        =   5
      Top             =   4920
      Width           =   1695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "delete"
      Height          =   615
      Left            =   6240
      TabIndex        =   4
      Top             =   4320
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "save"
      Height          =   615
      Left            =   4560
      TabIndex        =   3
      Top             =   4320
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "add"
      Height          =   615
      Left            =   1200
      TabIndex        =   2
      Top             =   4320
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   4440
      TabIndex        =   1
      Top             =   720
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      Caption         =   "Connection Controls"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   480
      TabIndex        =   18
      Top             =   3840
      Width           =   9855
   End
   Begin VB.Label Label4 
      Caption         =   "ESAL"
      Height          =   495
      Left            =   2400
      TabIndex        =   14
      Top             =   2640
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "EDESIG"
      Height          =   495
      Left            =   2400
      TabIndex        =   13
      Top             =   2040
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "ENAME"
      Height          =   495
      Left            =   2400
      TabIndex        =   12
      Top             =   1440
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "EID"
      Height          =   495
      Left            =   2400
      TabIndex        =   0
      Top             =   840
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If con.State = adStateOpen Then
rst.AddNew
Else: MsgBox "You Need To Open The Connection First"
End If
End Sub

Private Sub Command10_Click()
If con.State = adStateOpen Then
If Len(Trim(Text1.Text)) > 0 And Len(Trim(Text2.Text)) > 0 And Len(Trim(Text3.Text)) > 0 And Len(Trim(Text4.Text)) > 0 Then
MsgBox "Now the Record is ready to be added"
Else: MsgBox "record can't be added right now"
End If
Else: MsgBox "You Need To Open The Connection First"
End If
End Sub

Private Sub Command2_Click()

If con.State = adStateOpen Then
If Len(Trim(Text1.Text)) > 0 And Len(Trim(Text2.Text)) > 0 And Len(Trim(Text3.Text)) > 0 And Len(Trim(Text4.Text)) > 0 Then
rst.Update
MsgBox "Record Saved"
Else: MsgBox "Your Record was not saved successfully"
End If
Else: MsgBox "You Need To Open The Connection First"
End If
End Sub

Private Sub Command3_Click()
If con.State = adStateOpen Then
rst.Delete
MsgBox "Record Deleted"
rst.MovePrevious
Else: MsgBox "You Need To Open The Connection First"
End If
End Sub

Private Sub Command4_Click()
If con.State = adStateOpen Then
rst.MoveFirst
Else: MsgBox "You Need To Open The Connection First"
End If
End Sub

Private Sub Command5_Click()
If con.State = adStateOpen Then
If rst.BOF = True Then
MsgBox "Beginning of File"
rst.MoveFirst
Else: rst.MovePrevious
End If
Else: MsgBox "You Need To Open The Connection First"
End If

End Sub

Private Sub Command6_Click()
If con.State = adStateOpen Then
If rst.EOF = True Then
MsgBox "End of FIle"
rst.MoveLast
Else: rst.MoveNext
End If
Else: MsgBox "You Need To Open The Connection First"
End If
End Sub

Private Sub Command7_Click()
If con.State = adStateOpen Then
rst.MoveLast
Else: MsgBox "You Need To Open The Connection First"
End If
End Sub

Private Sub Command8_Click()
If con.State = adStateOpen Then
MsgBox "Already Opened "
Else: MsgBox "This will open the Connection"
con.Open "provider=microsoft.jet.oledb.4.0;data source=" & App.Path & "\adodb.mdb"
If con.State = adStateOpen Then
MsgBox "The Connection is now open."
rst.Open "select * from ado", con, adOpenDynamic, adLockOptimistic, adCmdText
Set Text1.DataSource = rst
Text1.DataField = "eid"
Set Text2.DataSource = rst
Text2.DataField = "ename"
Set Text3.DataSource = rst
Text3.DataField = "edesig"
Set Text4.DataSource = rst
Text4.DataField = "esal"
Else: MsgBox "The Connection is Closed."
End If
End If
End Sub

Private Sub Command9_Click()
If con.State = adStateClosed Then
MsgBox "connection already closed"
Else: con.Close
MsgBox "connection closed now"
End If
End Sub

