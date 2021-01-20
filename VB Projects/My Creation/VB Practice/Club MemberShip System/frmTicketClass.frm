VERSION 5.00
Begin VB.Form frmMS 
   Caption         =   "Form1"
   ClientHeight    =   5100
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7305
   LinkTopic       =   "Form1"
   ScaleHeight     =   5100
   ScaleWidth      =   7305
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cmbType 
      Height          =   315
      ItemData        =   "frmTicketClass.frx":0000
      Left            =   1920
      List            =   "frmTicketClass.frx":000D
      TabIndex        =   20
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Frame Frame3 
      Height          =   2055
      Left            =   0
      TabIndex        =   14
      Top             =   3000
      Width           =   5775
      Begin VB.CommandButton cmdnext 
         Caption         =   "Next"
         Height          =   375
         Left            =   480
         TabIndex        =   18
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdpre 
         Caption         =   "Previous"
         Height          =   375
         Left            =   1680
         TabIndex        =   17
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdfirst 
         Caption         =   "First"
         Height          =   375
         Left            =   2880
         TabIndex        =   16
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdlast 
         Caption         =   "Last"
         Height          =   375
         Left            =   4080
         TabIndex        =   15
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame2 
      Height          =   4575
      Left            =   5760
      TabIndex        =   6
      Top             =   480
      Width           =   1455
      Begin VB.CommandButton cmdnew 
         Caption         =   "New"
         Height          =   375
         Left            =   240
         TabIndex        =   13
         Top             =   360
         Width           =   855
      End
      Begin VB.CommandButton cmdsave 
         Caption         =   "Save"
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   960
         Width           =   855
      End
      Begin VB.CommandButton cmdcancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   240
         TabIndex        =   11
         Top             =   1560
         Width           =   855
      End
      Begin VB.CommandButton cmddelete 
         Caption         =   "Delete"
         Height          =   375
         Left            =   240
         TabIndex        =   10
         Top             =   2760
         Width           =   855
      End
      Begin VB.CommandButton cmdclose 
         Caption         =   "Close"
         Height          =   375
         Left            =   240
         TabIndex        =   9
         Top             =   3360
         Width           =   855
      End
      Begin VB.CommandButton cmdback 
         Caption         =   "Back"
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   3960
         Width           =   855
      End
      Begin VB.CommandButton cmdmodify 
         Caption         =   "Modify"
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   2160
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2535
      Left            =   0
      TabIndex        =   0
      Top             =   480
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
         TabIndex        =   2
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtRate 
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
         TabIndex        =   1
         Top             =   1800
         Width           =   1335
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
         Left            =   600
         TabIndex        =   5
         Top             =   720
         Width           =   195
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Class Type"
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
         TabIndex        =   4
         Top             =   1200
         Width           =   1035
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Rate"
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
         TabIndex        =   3
         Top             =   1800
         Width           =   435
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "MemberShipType Master"
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
      Left            =   1080
      TabIndex        =   19
      Top             =   0
      Width           =   4425
   End
End
Attribute VB_Name = "frmMS"
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

Private Sub cmdcancel_Click()
rsMS.CancelUpdate
rsMS.MoveFirst
Call prcControl
Call prcDisabled

End Sub

Private Sub cmdclose_Click()
End
End Sub

Private Sub cmddelete_Click()
On Error GoTo err
'MsgBox "Are You Sure, You want to Delete", vbYesNo
rsMS.Delete
rsMS.MoveNext
If rsMS.EOF Then
rsMS.MoveLast
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
'.CommandText = "delete from employee where frmMS_No= '" & Trim(txtempno.Text) & "'"
'.Execute
'.CommandText = "delete from grade where frmMS_No='" & Trim(txtempno.Text) & "'"
'.Execute
'.CommandText = "delete from Production where frmMS_No='" & Trim(txtempno.Text) & "'"
'.Execute
'End With
'
'rsMS.MovePrevious
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

Private Sub cmdfirst_Click()
rsMS.MoveFirst
prcControl
cmdnext.Enabled = True
cmdpre.Enabled = False

End Sub

Private Sub cmdlast_Click()
rsMS.MoveLast
prcControl
cmdnext.Enabled = False
cmdpre.Enabled = True

End Sub

Private Sub cmdmodify_Click()
prcEnabled
cmbType.SetFocus
End Sub

Private Sub cmdnew_Click()
rsMS2.Open "Select max(id)+1 from MemberShipchargeMas", con, adOpenDynamic, adLockOptimistic
txtempno.Text = rsMS2(0)
rsMS2.Close
prcEnabled
cmbType.Text = ""
txtRate.Text = ""
End Sub

Private Sub cmdnext_Click()
rsMS.MoveNext
If rsMS.EOF Then
rsMS.MoveLast
cmdnext.Enabled = False
End If
prcControl
cmdpre.Enabled = True

End Sub

Private Sub cmdpre_Click()
rsMS.MovePrevious
If rsMS.BOF Then
rsMS.MoveFirst
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
Public Sub prcControl()
txtempno.Text = StrConv(Trim(rsMS!ID), vbProperCase)
cmbType.Text = StrConv(Trim(rsMS!MemberShipType), vbProperCase)
txtRate.Text = StrConv(Trim(rsMS!Rate), vbProperCase)
End Sub

Public Sub prcEnabled()
For Each Control In frmMS
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

Public Sub prcValidate()
If fncValidate(txtempno.Text) = False Then
MsgBox "Please fill the Ticket Number", , FillingForm
vald = False
txtempno.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(cmbType.Text) = False Then
MsgBox "Please fill the Ticket Class", , FillingForm
vald = False
cmbType.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtRate.Text) = False Then
MsgBox "Please fill the Ticket Rate", , FillingForm
vald = False
txtRate.SetFocus
Exit Sub
Else
vald = True
End If

End Sub



Public Sub prcDisabled()
For Each Control In frmMS
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


Private Sub Form_Load()
prcForm
prcControl
prcDisabled
'txtempno.Enabled = False

End Sub
Public Function fncValidate(chk As String) As Boolean
If Len(Trim(chk)) = 0 Then
fncValidate = False
Else
fncValidate = True
End If
End Function


Public Sub prcsave()
If vald = True Then
rsMS!ID = txtempno.Text & ""
rsMS!MemberShipType = cmbType.Text & ""
rsMS!Rate = txtRate.Text & ""
rsMS.Update
MsgBox "Data saved"
End If
End Sub

