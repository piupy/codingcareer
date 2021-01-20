VERSION 5.00
Begin VB.Form frmBill 
   Caption         =   "Bill"
   ClientHeight    =   6270
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7140
   LinkTopic       =   "Form1"
   ScaleHeight     =   6270
   ScaleWidth      =   7140
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "&Print"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   8
      Top             =   3840
      Width           =   2895
   End
   Begin VB.TextBox txtAmt 
      Height          =   495
      Left            =   3240
      TabIndex        =   7
      Top             =   2880
      Width           =   2295
   End
   Begin VB.TextBox txtdt 
      Height          =   495
      Left            =   3240
      TabIndex        =   5
      Top             =   2160
      Width           =   2175
   End
   Begin VB.ComboBox cmbMS 
      Height          =   315
      ItemData        =   "frmBill.frx":0000
      Left            =   3240
      List            =   "frmBill.frx":000D
      TabIndex        =   3
      Top             =   1320
      Width           =   3015
   End
   Begin VB.ComboBox cmbCus 
      Height          =   315
      Left            =   3240
      TabIndex        =   1
      Top             =   480
      Width           =   3015
   End
   Begin VB.Label Label4 
      Caption         =   "Payment"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   6
      Top             =   2880
      Width           =   2535
   End
   Begin VB.Label Label3 
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   2160
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "MemberShip"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   1320
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Customer Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   2895
   End
End
Attribute VB_Name = "frmBill"
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
rsemp.Delete
rsemp.MoveNext
If rsemp.EOF Then
rsemp.MoveLast
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
'rsemp.MovePrevious
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
rsemp.MoveLast
a = rsemp!Emp_no
b = Mid(a, 2, 4)
b = b + 1
c = b
strTitle = "New Record"
intresponse = MsgBox("Add a new record", vbYesNo, strTitle)
If intresponse = vbNo Then
Exit Sub
End If
For Each Control In Emp
If TypeOf Control Is TextBox Then
Control.Text = ""
txttitle.Text = ""
End If
txtempno.Enabled = False
Next
prcEnabled
If b <= 9 Then
    strAccountNumber = "E000" + c
ElseIf b <= 99 Then
    strAccountNumber = "E00" + c
ElseIf b <= 999 Then
    strAccountNumber = "E0" + c
ElseIf b <= 9999 Then
    strAccountNumber = "E" + c
End If
txtempno.Text = strAccountNumber
rsemp.AddNew
txttitle.SetFocus
End Sub

Private Sub cmdfirst_Click()
rsemp.MoveFirst
prcControl
cmdnext.Enabled = True
cmdpre.Enabled = False
End Sub

Private Sub cmdlast_Click()
rsemp.MoveLast
prcControl
cmdnext.Enabled = False
cmdpre.Enabled = True
End Sub

Private Sub cmdnext_Click()
rsemp.MoveNext
If rsemp.EOF Then
rsemp.MoveLast
cmdnext.Enabled = False
End If
prcControl
cmdpre.Enabled = True
End Sub

Private Sub cmdpre_Click()
rsemp.MovePrevious
If rsemp.BOF Then
rsemp.MoveFirst
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
End Sub

Private Sub Command1_Click()
rsBill!Customer = cmbCus.Text & ""
rsBill!MemberShip = cmbMS.Text & ""
rsBill!dt = txtdt.Text & ""
rsBill!dt = txtAmt.Text & ""
rsBill.Update
MsgBox "Data saved"
'End If

End Sub

Private Sub Form_Load()
prcForm
prcControl
'prcDisabled
getlist
'txtempno.Enabled = False
'txttitle.SetFocus
End Sub
Public Sub getlist()
rsBill2.Open "Select distinct(Emp_Name) from Customer", con, adOpenDynamic, adLockOptimistic
Do
 cmbCus.AddItem rsBill2(0)
rsBill2.MoveNext
Loop Until rsBill2.EOF
End Sub

Public Sub prcControl()

'txtempno.Text = StrConv(Trim(rsemp!Emp_no), vbProperCase)
'txttitle.Text = StrConv(Trim(rsemp!Title), vbProperCase)
'txtname.Text = StrConv(Trim(rsemp!Emp_Name), vbProperCase)

'txtdob.Text = StrConv(Trim(rsemp!DOB), vbProperCase)
'txtdoj.Text = StrConv(Trim(rsemp!DOJ), vbProperCase)
'txtqua.Text = StrConv(Trim(rsemp!Qualification), vbProperCase)
End Sub

Public Sub prcDisabled()
For Each Control In frmBill
    If TypeOf Control Is TextBox Then
        Control.Locked = True
    End If
Next

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
rsemp.CancelUpdate
rsemp.MoveFirst
Call prcControl
Call prcDisabled

End Sub
Public Sub prcValidate()
If fncValidate(txtAmt.Text) = False Then
MsgBox "Please fill the Amount", , FillingForm
vald = False
txtAmt.SetFocus
Exit Sub
Else
vald = True
End If

End Sub

Public Sub prcsave()
'If vald = True Then
rsBill2!Customer = cmbCus.Text & ""
rsBill2!MemberShip = cmbMS.Text & ""
rsBill2!dt = txtdt.Text & ""
rsBill2!Amt = txtAmt.Text & ""

rsBill2.Update
MsgBox "Data saved"
'End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
rspro.Close
rsemp.Close
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
txtname.Text = StrConv(txtname.Text, vbProperCase)
If IsNumeric(txtname.Text) Then
txtname.SetFocus
txtname.Text = ""
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
If KeyCode = 13 Then txtname.SetFocus

End Sub

