VERSION 5.00
Begin VB.Form Emp 
   Caption         =   "Customer Information"
   ClientHeight    =   8175
   ClientLeft      =   60
   ClientTop       =   375
   ClientWidth     =   7275
   LinkTopic       =   "Form1"
   ScaleHeight     =   8430
   ScaleWidth      =   15120
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtRate 
      Enabled         =   0   'False
      Height          =   375
      Left            =   2760
      TabIndex        =   37
      Top             =   4680
      Width           =   1215
   End
   Begin VB.TextBox txtName 
      Height          =   375
      Left            =   2760
      TabIndex        =   36
      Top             =   2400
      Width           =   2415
   End
   Begin VB.Frame Frame3 
      Height          =   855
      Left            =   600
      TabIndex        =   19
      Top             =   5400
      Width           =   5775
      Begin VB.CommandButton cmdlast 
         Caption         =   "Last"
         Height          =   375
         Left            =   4320
         TabIndex        =   23
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdfirst 
         Caption         =   "First"
         Height          =   375
         Left            =   480
         TabIndex        =   22
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdpre 
         Caption         =   "Previous"
         Height          =   375
         Left            =   3000
         TabIndex        =   21
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdnext 
         Caption         =   "Next"
         Height          =   375
         Left            =   1680
         TabIndex        =   20
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame2 
      Height          =   1455
      Left            =   600
      TabIndex        =   11
      Top             =   6240
      Width           =   5775
      Begin VB.CommandButton cmdprnt 
         Caption         =   "Print"
         Height          =   375
         Left            =   4320
         TabIndex        =   38
         Top             =   840
         Width           =   855
      End
      Begin VB.CommandButton cmdmodify 
         Caption         =   "Modify"
         Height          =   375
         Left            =   4320
         TabIndex        =   18
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdback 
         Caption         =   "Back"
         Height          =   375
         Left            =   3000
         TabIndex        =   17
         Top             =   840
         Width           =   855
      End
      Begin VB.CommandButton cmdclose 
         Caption         =   "Close"
         Height          =   375
         Left            =   1680
         TabIndex        =   16
         Top             =   840
         Width           =   855
      End
      Begin VB.CommandButton cmddelete 
         Caption         =   "Delete"
         Height          =   375
         Left            =   480
         TabIndex        =   15
         Top             =   840
         Width           =   855
      End
      Begin VB.CommandButton cmdcancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   3000
         TabIndex        =   14
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdsave 
         Caption         =   "Save"
         Height          =   375
         Left            =   1680
         TabIndex        =   13
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdnew 
         Caption         =   "New"
         Height          =   375
         Left            =   480
         TabIndex        =   12
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Height          =   4335
      Left            =   600
      TabIndex        =   1
      Top             =   1080
      Width           =   5775
      Begin VB.ComboBox cmbType 
         Height          =   315
         ItemData        =   "Emp.frx":0000
         Left            =   2160
         List            =   "Emp.frx":000D
         TabIndex        =   35
         Top             =   3240
         Width           =   2055
      End
      Begin VB.ComboBox txttitle 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         ItemData        =   "Emp.frx":0029
         Left            =   2160
         List            =   "Emp.frx":0036
         TabIndex        =   24
         Top             =   840
         Width           =   855
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
         Left            =   2160
         TabIndex        =   10
         Top             =   2760
         Width           =   2655
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
         Left            =   2160
         TabIndex        =   9
         Top             =   2280
         Width           =   1335
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
         Left            =   2160
         TabIndex        =   8
         Top             =   1800
         Width           =   1335
      End
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
         Left            =   2160
         TabIndex        =   7
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         Caption         =   "Rate"
         Height          =   195
         Left            =   1560
         TabIndex        =   34
         Top             =   3720
         Width           =   345
      End
      Begin VB.Label Label13 
         Caption         =   "Class Type"
         Height          =   255
         Left            =   1080
         TabIndex        =   32
         Top             =   3240
         Width           =   855
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "(dd/mm/yyyy)"
         Height          =   195
         Index           =   0
         Left            =   3600
         TabIndex        =   27
         Top             =   2400
         Width           =   960
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "(dd/mm/yyyy)"
         Height          =   195
         Left            =   3600
         TabIndex        =   26
         Top             =   1920
         Width           =   960
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Title"
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
         Left            =   1560
         TabIndex        =   25
         Top             =   960
         Width           =   390
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Qualification"
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
         Left            =   840
         TabIndex        =   6
         Top             =   2880
         Width           =   1095
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
         Left            =   600
         TabIndex        =   5
         Top             =   2400
         Width           =   1335
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Date Of Birth"
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
         Left            =   840
         TabIndex        =   4
         Top             =   1920
         Width           =   1110
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
         Left            =   480
         TabIndex        =   3
         Top             =   1440
         Width           =   1455
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
         Left            =   1800
         TabIndex        =   2
         Top             =   480
         Width           =   195
      End
   End
   Begin VB.Label Label14 
      Caption         =   "Class Type"
      Height          =   255
      Left            =   960
      TabIndex        =   33
      Top             =   5160
      Width           =   1215
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "(dd/mm/yyyy)"
      Height          =   195
      Index           =   1
      Left            =   600
      TabIndex        =   31
      Top             =   2280
      Width           =   960
   End
   Begin VB.Label Label12 
      Caption         =   "Label12"
      Height          =   735
      Left            =   4440
      TabIndex        =   30
      Top             =   3240
      Width           =   615
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      Height          =   495
      Left            =   3840
      TabIndex        =   29
      Top             =   3480
      Width           =   1215
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "Qualification"
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
      Left            =   1080
      TabIndex        =   28
      Top             =   4560
      Width           =   1095
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Customer Details Form"
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
      Left            =   1680
      TabIndex        =   0
      Top             =   360
      Width           =   4035
   End
End
Attribute VB_Name = "Emp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim newCust As String
Dim temp As String
Dim vald As Boolean



Private Sub cmbType_Click()
rsemp2.Open "Select Rate from MemberShipChargeMas where MemberShipType='" & cmbType.Text & "' ", con, adOpenDynamic, adLockOptimistic
txtRate.Text = rsemp2(0)
rsemp2.Close
End Sub

Private Sub cmdback_Click()
Main.Show
Unload Me

End Sub

Private Sub cmdclose_Click()
End
End Sub

Private Sub cmddelete_Click()
On Error GoTo err

rsemp.Delete
rsemp.MoveNext
If rsemp.EOF Then
rsemp.MoveLast
End If
prcControl


Exit Sub
err:

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
txtRate.Text = ""
rsemp.MoveFirst
prcControl
cmdnext.Enabled = True
cmdpre.Enabled = False
End Sub

Private Sub cmdlast_Click()
txtRate.Text = ""
rsemp.MoveLast
prcControl
cmdnext.Enabled = False
cmdpre.Enabled = True
End Sub

Private Sub cmdnext_Click()
txtRate.Text = ""
rsemp.MoveNext
If rsemp.EOF Then
rsemp.MoveLast
cmdnext.Enabled = False
End If
prcControl
cmdpre.Enabled = True
End Sub

Private Sub cmdpre_Click()
txtRate.Text = ""
rsemp.MovePrevious
If rsemp.BOF Then
rsemp.MoveFirst
cmdpre.Enabled = False
End If
prcControl
cmdnext.Enabled = True

End Sub

Private Sub cmdprnt_Click()
Emp.Hide
frmMSMas.Show

End Sub

Private Sub cmdsave_Click()
 Dim TheDate As Date
  Dim Msg
 Dim chk As Integer
  TheDate = txtdob.Text
  chk = DateDiff("yyyy", TheDate, Now)
  If chk >= 20 Then
  
  Else
  MsgBox "Your Date of Birth is Incorrect! You Should be 20 year Old Atleast (ex. 1991)"
  txtdob.Text = ""
  txtdob.SetFocus
  Exit Sub
  End If


prcValidate
If vald = True Then
prcsave
prcDisabled
End If
End Sub

Private Sub Form_Load()
prcForm
prcControl
prcDisabled
txtempno.Enabled = False

End Sub
Public Sub prcControl()
txtempno.Text = StrConv(Trim(rsemp!Emp_no), vbProperCase)
txttitle.Text = StrConv(Trim(rsemp!Title), vbProperCase)
txtName.Text = StrConv(Trim(rsemp!Emp_Name), vbProperCase)
txtdob.Text = StrConv(Trim(rsemp!DOB), vbProperCase)
txtdoj.Text = StrConv(Trim(rsemp!doj), vbProperCase)
txtqua.Text = StrConv(Trim(rsemp!Qualification), vbProperCase)
cmbType.Text = StrConv(Trim(rsemp!MemberShipType), vbProperCase)
 txtRate.Text = StrConv(Trim(rsemp!Rate), vbProperCase)
End Sub

Public Sub prcDisabled()
For Each Control In Emp
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
rsemp.CancelUpdate
rsemp.MoveFirst
Call prcControl
Call prcDisabled

End Sub
Public Sub prcValidate()
If fncValidate(txtempno.Text) = False Then
MsgBox "Please fill the Employee Number", , FillingForm
vald = False
txtempno.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txttitle.Text) = False Then
MsgBox "Please fill the Title", , FillingForm
vald = False
txttitle.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtName.Text) = False Then
MsgBox "Please fill the Employee Name", , FillingForm
vald = False
txtName.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtdob.Text) = False Then
MsgBox "Please fill the Date of Birth", , FillingForm
vald = False
txtdob.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtdoj.Text) = False Then
MsgBox "Please fill the Date of Joining", , FillingForm
vald = False
txtdoj.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtqua.Text) = False Then
MsgBox "Please fill the Qualification", , FillingForm
vald = False
txtqua.SetFocus
Exit Sub
Else
vald = True
End If

If fncValidate(txtRate.Text) = False Then
MsgBox "Please fill the Rate", , FillingForm
vald = False
txtRate.SetFocus
Exit Sub
Else
vald = True
End If

End Sub

Public Sub prcsave()
If vald = True Then
rsemp!Emp_no = txtempno.Text & ""
rsemp!Title = txttitle.Text & ""
rsemp!Emp_Name = txtName.Text & ""
rsemp!DOB = txtdob.Text & ""
rsemp!doj = txtdoj.Text & ""
rsemp!Qualification = txtqua.Text & ""
rsemp!MemberShipType = cmbType.Text & ""
rsemp!Rate = txtRate.Text & ""
rsemp.Update
MsgBox "Data saved"
End If
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



Private Sub txtName_Change()
If IsNumeric(Right(txtName, 1)) = True Then
    ' is a number
    txtName = Left(txtName, Len(txtName) - 1)
    MsgBox "No numbers allowed"
Else
    'anything but a number
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
