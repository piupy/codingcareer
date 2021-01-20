VERSION 5.00
Begin VB.Form frmFeedBack 
   Caption         =   "FeedBack\Complaint"
   ClientHeight    =   6330
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8250
   LinkTopic       =   "Form1"
   ScaleHeight     =   6330
   ScaleWidth      =   8250
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cmbName 
      Height          =   315
      Left            =   2040
      TabIndex        =   18
      Top             =   1080
      Width           =   3015
   End
   Begin VB.Frame Frame1 
      Height          =   4215
      Left            =   0
      TabIndex        =   13
      Top             =   720
      Width           =   5775
      Begin VB.TextBox txtFeed 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2445
         Left            =   480
         TabIndex        =   14
         Top             =   1560
         Width           =   4455
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
         Left            =   405
         TabIndex        =   16
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "FeedBack\Complaint"
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
         TabIndex        =   15
         Top             =   1080
         Width           =   1905
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
         Caption         =   "Save"
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
         Top             =   4440
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
         Top             =   1560
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
      Top             =   4800
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
      Caption         =   "Customer Information"
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
      TabIndex        =   17
      Top             =   0
      Width           =   3750
   End
End
Attribute VB_Name = "frmFeedBack"
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
rsFeedBack.Delete
rsFeedBack.MoveNext
If rsFeedBack.EOF Then
rsFeedBack.MoveLast
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


strTitle = "New Record"
intresponse = MsgBox("Add a new record", vbYesNo, strTitle)
If intresponse = vbNo Then
Exit Sub
End If
For Each Control In Emp
If TypeOf Control Is TextBox Then
Control.Text = ""

End If

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

rsFeedBack.AddNew

End Sub

Private Sub cmdfirst_Click()
rsFeedBack.MoveFirst
prcControl
cmdnext.Enabled = True
cmdpre.Enabled = False
End Sub

Private Sub cmdlast_Click()
rsFeedBack.MoveLast
prcControl
cmdnext.Enabled = False
cmdpre.Enabled = True
End Sub

Private Sub cmdnext_Click()
rsFeedBack.MoveNext
If rsFeedBack.EOF Then
rsFeedBack.MoveLast
cmdnext.Enabled = False
End If
prcControl
cmdpre.Enabled = True
End Sub

Private Sub cmdpre_Click()
rsFeedBack.MovePrevious
If rsFeedBack.BOF Then
rsFeedBack.MoveFirst
cmdpre.Enabled = False
End If
prcControl
cmdnext.Enabled = True

End Sub

Private Sub cmdsave_Click()

prcsave
prcDisabled

End Sub

Private Sub Form_Load()
prcForm
prcControl
prcDisabled
getlist

End Sub

Public Sub getlist()
rsFeed.Open "Select distinct(Emp_Name) from Customer", con, adOpenDynamic, adLockOptimistic
Do
 cmbName.AddItem rsFeed(0)
rsFeed.MoveNext
Loop Until rsFeed.EOF
End Sub
Public Sub prcControl()


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
rsFeedBack.CancelUpdate
rsFeedBack.MoveFirst
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

End Sub

Public Sub prcsave()

rsFeedBack!Customer = cmbName.Text & ""
rsFeedBack!FeedBack = txtFeed.Text & ""

rsFeedBack.Update
MsgBox "Data saved"

End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
rspro.Close
rsFeedBack.Close
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

