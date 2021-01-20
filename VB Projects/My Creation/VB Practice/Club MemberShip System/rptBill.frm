VERSION 5.00
Begin VB.Form rptBill 
   Caption         =   "Form1"
   ClientHeight    =   5175
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7350
   LinkTopic       =   "Form1"
   ScaleHeight     =   5175
   ScaleWidth      =   7350
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   3735
      Left            =   0
      TabIndex        =   13
      Top             =   720
      Width           =   5775
      Begin VB.TextBox txtempno 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   1920
         TabIndex        =   18
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtname 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   1920
         TabIndex        =   17
         Top             =   1200
         Width           =   2655
      End
      Begin VB.TextBox txtdob 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   1920
         TabIndex        =   16
         Top             =   1680
         Width           =   1335
      End
      Begin VB.TextBox txtdoj 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   1920
         TabIndex        =   15
         Top             =   2160
         Width           =   1335
      End
      Begin VB.TextBox txtqua 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   1920
         TabIndex        =   14
         Top             =   2640
         Width           =   2655
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "ID"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   1440
         TabIndex        =   25
         Top             =   600
         Width           =   195
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Customer Name"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   285
         TabIndex        =   24
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   1320
         TabIndex        =   23
         Top             =   1680
         Width           =   435
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Date of Joining"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   480
         TabIndex        =   22
         Top             =   2160
         Width           =   1335
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Amount"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   720
         TabIndex        =   21
         Top             =   2640
         Width           =   675
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "(dd/mm/yyyy)"
         Height          =   195
         Left            =   3240
         TabIndex        =   20
         Top             =   1800
         Width           =   960
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "(dd/mm/yyyy)"
         Height          =   195
         Left            =   3240
         TabIndex        =   19
         Top             =   2280
         Width           =   960
      End
   End
   Begin VB.Frame Frame2 
      Height          =   4935
      Left            =   5760
      TabIndex        =   5
      Top             =   720
      Width           =   1455
      Begin VB.CommandButton cmdnew 
         Caption         =   "New"
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   360
         Width           =   855
      End
      Begin VB.CommandButton cmdsave 
         Caption         =   "&Print"
         Height          =   375
         Left            =   240
         TabIndex        =   11
         Top             =   960
         Width           =   855
      End
      Begin VB.CommandButton cmdcancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   240
         TabIndex        =   10
         Top             =   1560
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmddelete 
         Caption         =   "Delete"
         Height          =   375
         Left            =   240
         TabIndex        =   9
         Top             =   2760
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmdclose 
         Caption         =   "Close"
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   3360
         Width           =   855
      End
      Begin VB.CommandButton cmdback 
         Caption         =   "Back"
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   3960
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmdmodify 
         Caption         =   "Modify"
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   2160
         Visible         =   0   'False
         Width           =   855
      End
   End
   Begin VB.Frame Frame3 
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   4320
      Width           =   5775
      Begin VB.CommandButton cmdnext 
         Caption         =   "Next"
         Height          =   375
         Left            =   480
         TabIndex        =   4
         Top             =   240
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmdpre 
         Caption         =   "Previous"
         Height          =   375
         Left            =   1680
         TabIndex        =   3
         Top             =   240
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmdfirst 
         Caption         =   "First"
         Height          =   375
         Left            =   2880
         TabIndex        =   2
         Top             =   240
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmdlast 
         Caption         =   "Last"
         Height          =   375
         Left            =   4080
         TabIndex        =   1
         Top             =   240
         Visible         =   0   'False
         Width           =   855
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Bill"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   2880
      TabIndex        =   26
      Top             =   120
      Width           =   585
   End
End
Attribute VB_Name = "rptBill"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim newCust As String
Dim temp As String
Dim vald As Boolean

Private Sub cmdback_Click()
Main.Show
Unload Me

End Sub

Private Sub cmdclose_Click()
End
End Sub

Private Sub cmddelete_Click()
On Error GoTo err
MsgBox "Are You Sure, You want to Delete", vbYesNo
rsBill.Delete
rsBill.MoveNext
If rsBill.EOF Then
rsBill.MoveLast
End If
prcControl
'Dim res As Integer
'Dim comExecs As Command
'Dim prmdel_Accounts
'res = MsgBox("The account will be permanently closed", vbMsgBoxSetForeground + vbCritical + vbYesNo)
'If res = vbYes Then
'Set comExecs = New Command
'With comExecs
'.ActiveConnection = con
'.CommandText = "delete from employee where Emp_No= '" & Trim(txtempno.Text) & "'"
'.Execute
'.CommandText = "delete from grade where Emp_No='" & Trim(txtempno.Text) & "'"
'.Execute
'.CommandText = "delete from Production where Emp_No='" & Trim(txtempno.Text) & "'"
'.Execute
'End With
'
'rsBill.MovePrevious
'Call prcControl
'cmdnext.Enabled = False
'cmdpre.Enabled = False
'cmdfirst.Enabled = False
'cmdlast.Enabled = False
'cmdnew.Enabled = False
'cmdsave.Enabled = False
'cmdmodify.Enabled = False
'cmdcancel.Enabled = False
''Call prcDisabled
Exit Sub
err:
'MsgBox err.Description
'End If
End Sub

Private Sub cmdmodify_Click()
prcEnabled
txttitle.SetFocus
End Sub

Private Sub cmdnew_Click()

Dim strAccountNumber As String
Dim a As String
Dim b As Integer
Dim c As String
Dim d As String
'd = Date
'rsBill.MoveLast
'a = rsBill!Emp_no
'b = Mid(a, 2, 4)
'b = b + 1
'c = b
strTitle = "New Record"
intresponse = MsgBox("Add a new record", vbYesNo, strTitle)
If intresponse = vbNo Then
Exit Sub
End If
For Each Control In rptBill
If TypeOf Control Is TextBox Then
Control.Text = ""
'txttitle.Text = ""
End If
txtempno.Enabled = False
Next
prcEnabled
If b <= 9 Then
    strAccountNumber = "B000" + c
ElseIf b <= 99 Then
    strAccountNumber = "B00" + c
ElseIf b <= 999 Then
    strAccountNumber = "B0" + c
ElseIf b <= 9999 Then
    strAccountNumber = "B" + c
End If
 txtempno.Text = strAccountNumber
rsBill.AddNew
'txttitle.SetFocus
End Sub

Private Sub cmdfirst_Click()
rsBill.MoveFirst
prcControl
cmdnext.Enabled = True
cmdpre.Enabled = False
End Sub

Private Sub cmdlast_Click()
rsBill.MoveLast
prcControl
cmdnext.Enabled = False
cmdpre.Enabled = True
End Sub

Private Sub cmdnext_Click()
rsBill.MoveNext
If rsBill.EOF Then
rsBill.MoveLast
cmdnext.Enabled = False
End If
prcControl
cmdpre.Enabled = True
End Sub

Private Sub cmdpre_Click()
rsBill.MovePrevious
If rsBill.BOF Then
rsBill.MoveFirst
cmdpre.Enabled = False
End If
prcControl
cmdnext.Enabled = True

End Sub

Private Sub cmdsave_Click()
prcValidate
If vald = True Then
prcsave
prcDisabled
End If



    'prcForm
    rsBill.Update
    DataEnvironment1.Connection1 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\MemberShip.mdb;Persist Security Info=False"
    DataEnvironment1.Bill
    DataReport1.Show
    Unload DataEnvironment1

End Sub

Private Sub Form_Load()
prcForm
prcControl
'prcDisabled
txtempno.Enabled = False
'txttitle.SetFocus
End Sub
Public Sub prcControl()

'txtempno.Text = StrConv(Trim(rsBill!id), vbProperCase)
'txttitle.Text = StrConv(Trim(rsBill!Customer), vbProperCase)
'txtname.Text = StrConv(Trim(rsBill!dt), vbProperCase)
'txtdob.Text = StrConv(Trim(rsBill!doj), vbProperCase)
'txtdoj.Text = StrConv(Trim(rsBill!Amt), vbProperCase)

End Sub

Public Sub prcDisabled()
For Each Control In rptBill
    If TypeOf Control Is TextBox Then
        Control.Locked = True
    End If
Next
cmdcancel.Enabled = False
cmdsave.Enabled = False
cmdmodify.Enabled = True
cmddelete.Enabled = True
cmdnew.Enabled = True
cmdclose.Enabled = True
End Sub
Public Sub prcEnabled()
For Each Control In Emp
    If TypeOf Control Is TextBox Then
        Control.Locked = False
    End If
Next
cmdcancel.Enabled = True
cmdsave.Enabled = True
cmdmodify.Enabled = True
cmddelete.Enabled = True
cmdnew.Enabled = False
cmdclose.Enabled = False
End Sub

Private Sub cmdcancel_Click()
rsBill.CancelUpdate
rsBill.MoveFirst
Call prcControl
Call prcDisabled

End Sub
Public Sub prcValidate()

If fncValidate(txtqua.Text) = False Then
MsgBox "Please fill the Amount", , FillingForm
vald = False
txtName.SetFocus
Exit Sub
Else
vald = True
End If


End Sub

Public Sub prcsave()
If vald = True Then
rsBill!ID = txtempno.Text & ""
rsBill!Customer = txtName.Text & ""
rsBill!dt = txtdob.Text & ""
rsBill!doj = txtdoj.Text & ""
rsBill!Amt = txtqua.Text & ""
rsBill.Update
MsgBox "Data saved"
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
rspro.Close
rsBill.Close
rsGrade.Close

End Sub

Private Sub txtdob_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then txtdoj.SetFocus

End Sub

Private Sub txtdob_LostFocus()
If Not Len(Trim(txtdob.Text)) = 0 Then
If Not IsDate(txtdob.Text) Then
MsgBox "Invalid Date"
txtdob.SetFocus
txtdob.Text = ""
Exit Sub
End If
End If
txtdob.Text = Format(txtdob.Text, "dd/mmm/yyyy")

End Sub

Private Sub txtdoj_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then txtqua.SetFocus

End Sub

Private Sub txtdoj_LostFocus()
If Not Len(Trim(txtdoj.Text)) = 0 Then
If Not IsDate(txtdoj.Text) Then
MsgBox "Invalid Date"
txtdoj.SetFocus
txtdoj.Text = ""
Exit Sub
End If
End If
txtdoj.Text = Format(txtdoj.Text, "dd/mmm/yyyy")

End Sub

Private Sub txtname_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then txtdob.SetFocus

End Sub

Private Sub txtname_LostFocus()
txtName.Text = StrConv(txtName.Text, vbProperCase)
If IsNumeric(txtName.Text) Then
txtName.SetFocus
txtName.Text = ""
MsgBox "Please Fill Name in Alphabet Order", vbCritical
End If
End Sub

Private Sub txtqua_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then cmdsave.SetFocus

End Sub

Private Sub txtqua_LostFocus()
txtqua.Text = StrConv(txtqua.Text, vbProperCase)

End Sub

Private Sub txttitle_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then txtName.SetFocus

End Sub

