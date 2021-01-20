VERSION 5.00
Begin VB.Form frmMSMas 
   Caption         =   ":: Member-Ship Master ::"
   ClientHeight    =   7485
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6315
   LinkTopic       =   "Form1"
   ScaleHeight     =   7485
   ScaleWidth      =   6315
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cmbid 
      Height          =   315
      Left            =   2040
      TabIndex        =   38
      Top             =   1320
      Width           =   1215
   End
   Begin VB.ComboBox txtName 
      Enabled         =   0   'False
      Height          =   315
      Left            =   2040
      TabIndex        =   37
      Top             =   2280
      Width           =   3255
   End
   Begin VB.Frame Frame1 
      Height          =   4455
      Left            =   120
      TabIndex        =   13
      Top             =   720
      Width           =   5775
      Begin VB.TextBox txtRate 
         Enabled         =   0   'False
         Height          =   375
         Left            =   1920
         TabIndex        =   36
         Top             =   3840
         Width           =   1215
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
         Height          =   270
         Left            =   1920
         TabIndex        =   19
         Text            =   "B0001"
         Top             =   600
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.TextBox txtdob 
         Enabled         =   0   'False
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
         Top             =   2040
         Width           =   1335
      End
      Begin VB.TextBox txtdoj 
         Enabled         =   0   'False
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
         Top             =   2520
         Width           =   1335
      End
      Begin VB.TextBox txtqua 
         Enabled         =   0   'False
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
         Top             =   3000
         Width           =   2655
      End
      Begin VB.ComboBox txttitle 
         Enabled         =   0   'False
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
         ItemData        =   "frmMSMas.frx":0000
         Left            =   1920
         List            =   "frmMSMas.frx":000D
         TabIndex        =   15
         Top             =   1080
         Width           =   855
      End
      Begin VB.ComboBox cmbType 
         Enabled         =   0   'False
         Height          =   315
         ItemData        =   "frmMSMas.frx":0022
         Left            =   1920
         List            =   "frmMSMas.frx":002F
         TabIndex        =   14
         Top             =   3480
         Width           =   2055
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
         TabIndex        =   29
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
         Left            =   360
         TabIndex        =   28
         Top             =   1560
         Width           =   1455
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
         Left            =   705
         TabIndex        =   27
         Top             =   2160
         Width           =   1110
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
         TabIndex        =   26
         Top             =   2640
         Width           =   1335
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
         Left            =   720
         TabIndex        =   25
         Top             =   3120
         Width           =   1095
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
         Left            =   1320
         TabIndex        =   24
         Top             =   1080
         Width           =   390
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "(dd/mm/yyyy)"
         Height          =   195
         Left            =   3360
         TabIndex        =   23
         Top             =   2160
         Width           =   960
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "(dd/mm/yyyy)"
         Height          =   195
         Index           =   0
         Left            =   3360
         TabIndex        =   22
         Top             =   2640
         Width           =   960
      End
      Begin VB.Label Label13 
         Caption         =   "Class Type"
         Height          =   255
         Left            =   960
         TabIndex        =   21
         Top             =   3600
         Width           =   855
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         Caption         =   "Rate"
         Height          =   195
         Left            =   1440
         TabIndex        =   20
         Top             =   3960
         Width           =   345
      End
   End
   Begin VB.Frame Frame2 
      Height          =   1215
      Left            =   120
      TabIndex        =   5
      Top             =   5160
      Width           =   5775
      Begin VB.CommandButton cmdnew 
         Caption         =   "New"
         Height          =   375
         Left            =   1680
         TabIndex        =   12
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdsave 
         Caption         =   "&Print"
         Height          =   375
         Left            =   3000
         TabIndex        =   11
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdcancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   480
         TabIndex        =   10
         Top             =   720
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmddelete 
         Caption         =   "Delete"
         Height          =   375
         Left            =   2280
         TabIndex        =   9
         Top             =   720
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmdclose 
         Caption         =   "Close"
         Height          =   375
         Left            =   3120
         TabIndex        =   8
         Top             =   720
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmdback 
         Caption         =   "Back"
         Height          =   375
         Left            =   3960
         TabIndex        =   7
         Top             =   720
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton cmdmodify 
         Caption         =   "Modify"
         Height          =   375
         Left            =   1320
         TabIndex        =   6
         Top             =   720
         Visible         =   0   'False
         Width           =   855
      End
   End
   Begin VB.Frame Frame3 
      Height          =   855
      Left            =   120
      TabIndex        =   0
      Top             =   6360
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
      Caption         =   "Customer's Bill"
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
      Left            =   1440
      TabIndex        =   35
      Top             =   240
      Width           =   2640
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
      Left            =   720
      TabIndex        =   34
      Top             =   4200
      Width           =   1095
   End
   Begin VB.Label Label11 
      Caption         =   "Label11"
      Height          =   495
      Left            =   3480
      TabIndex        =   33
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label Label12 
      Caption         =   "Label12"
      Height          =   735
      Left            =   4080
      TabIndex        =   32
      Top             =   2880
      Width           =   615
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "(dd/mm/yyyy)"
      Height          =   195
      Index           =   1
      Left            =   240
      TabIndex        =   31
      Top             =   1920
      Width           =   960
   End
   Begin VB.Label Label14 
      Caption         =   "Class Type"
      Height          =   255
      Left            =   600
      TabIndex        =   30
      Top             =   4800
      Width           =   1215
   End
End
Attribute VB_Name = "frmMSMas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim newCust As String
Dim temp As String
Dim vald As Boolean



Private Sub cmbid_Click()
rsemp3.Open "Select * from Customer where Emp_No='" & cmbid.Text & "' ", con, adOpenDynamic, adLockOptimistic
txtempno.Text = rsemp3(0)
txttitle.Text = rsemp3(1)
txtName.Text = rsemp3(2)
txtdob.Text = rsemp3(3)
txtdoj.Text = rsemp3(4)
txtqua.Text = rsemp3(5)
cmbType.Text = rsemp3(6)
txtRate.Text = rsemp3(7)
rsemp3.Close

End Sub

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

rsCusBill.Delete
rsCusBill.MoveNext
If rsCusBill.EOF Then
rsCusBill.MoveLast
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


cmdsave.Enabled = True

End Sub

Private Sub cmdfirst_Click()
txtRate.Text = ""
rsCusBill.MoveFirst
prcControl
cmdnext.Enabled = True
cmdpre.Enabled = False
End Sub

Private Sub cmdlast_Click()
txtRate.Text = ""
rsCusBill.MoveLast
prcControl
cmdnext.Enabled = False
cmdpre.Enabled = True
End Sub

Private Sub cmdnext_Click()
txtRate.Text = ""
rsCusBill.MoveNext
If rsCusBill.EOF Then
rsCusBill.MoveLast
cmdnext.Enabled = False
End If
prcControl
cmdpre.Enabled = True
End Sub

Private Sub cmdpre_Click()
txtRate.Text = ""
rsCusBill.MovePrevious
If rsCusBill.BOF Then
rsCusBill.MoveFirst
cmdpre.Enabled = False
End If
prcControl
cmdnext.Enabled = True

End Sub

Private Sub cmdsave_Click()
prcForm
prcValidate
If vald = True Then
prcsave


rsCusBill.Update
    DataEnvironment1.Connection1 = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\MemberShip.mdb;Persist Security Info=False"
    DataEnvironment1.Bill
    DataReport1.Show
    Unload DataEnvironment1

End If
End Sub

Private Sub Form_Load()

prcDisabled
getlist
getId
txtempno.Enabled = False

End Sub


Public Sub getId()
rsempId.Open "Select distinct Emp_No from Customer", con, adOpenDynamic, adLockOptimistic
Do
 cmbid.AddItem rsempId(0)
rsempId.MoveNext
Loop Until rsempId.EOF
End Sub

Public Sub getlist()
rsemp2.Open "Select distinct Emp_Name from Customer", con, adOpenDynamic, adLockOptimistic
Do
 txtName.AddItem rsemp2(0)
rsemp2.MoveNext
Loop Until rsemp2.EOF
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
rsCusBill.CancelUpdate
rsCusBill.MoveFirst
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

rsCusBill.Delete
    rsCusBill.AddNew
    rsCusBill(0) = cmbid.Text
    rsCusBill(1) = txttitle
    rsCusBill(2) = txtName
    rsCusBill(3) = txtdob
    rsCusBill(4) = txtdoj
    rsCusBill(5) = txtqua
    rsCusBill(6) = cmbType
    rsCusBill(7) = txtRate
    rsCusBill.UpdateBatch adAffectAll
    MsgBox "Member Print."
'End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
rspro.Close
rsCusBill.Close
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



Private Sub txtName_Click()

rsemp3.Open "Select * from Customer where Emp_Name='" & txtName.Text & "' ", con, adOpenDynamic, adLockOptimistic
txtempno.Text = rsemp3(0)
txttitle.Text = rsemp3(1)
txtName.Text = rsemp3(2)
txtdob.Text = rsemp3(3)
txtdoj.Text = rsemp3(4)
txtqua.Text = rsemp3(5)
cmbType.Text = rsemp3(6)
txtRate.Text = rsemp3(7)
rsemp3.Close

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

