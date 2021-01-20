VERSION 5.00
Begin VB.Form Grade 
   Caption         =   "Employee Grade"
   ClientHeight    =   3165
   ClientLeft      =   60
   ClientTop       =   375
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   8595
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame3 
      Height          =   855
      Left            =   600
      TabIndex        =   15
      Top             =   4560
      Width           =   5415
      Begin VB.CommandButton cmdlast 
         Caption         =   "Last"
         Height          =   375
         Left            =   3960
         TabIndex        =   19
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdfirst 
         Caption         =   "First"
         Height          =   375
         Left            =   2760
         TabIndex        =   18
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdpre 
         Caption         =   "Previous"
         Height          =   375
         Left            =   1560
         TabIndex        =   17
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdnext 
         Caption         =   "Next"
         Height          =   375
         Left            =   360
         TabIndex        =   16
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame2 
      Height          =   3855
      Left            =   6000
      TabIndex        =   7
      Top             =   1560
      Width           =   1455
      Begin VB.CommandButton cmdmodify 
         Caption         =   "Modify"
         Height          =   375
         Left            =   240
         TabIndex        =   14
         Top             =   1800
         Width           =   855
      End
      Begin VB.CommandButton cmdback 
         Caption         =   "Back"
         Height          =   375
         Left            =   240
         TabIndex        =   13
         Top             =   3240
         Width           =   855
      End
      Begin VB.CommandButton cmdclose 
         Caption         =   "Close"
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   2760
         Width           =   855
      End
      Begin VB.CommandButton cmddelete 
         Caption         =   "Delete"
         Height          =   375
         Left            =   240
         TabIndex        =   11
         Top             =   2280
         Width           =   855
      End
      Begin VB.CommandButton cmdcancel 
         Caption         =   "Cancel"
         Height          =   375
         Left            =   240
         TabIndex        =   10
         Top             =   1320
         Width           =   855
      End
      Begin VB.CommandButton cmdsave 
         Caption         =   "Save"
         Height          =   375
         Left            =   240
         TabIndex        =   9
         Top             =   840
         Width           =   855
      End
      Begin VB.CommandButton cmdnew 
         Caption         =   "New"
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Height          =   3135
      Left            =   600
      TabIndex        =   0
      Top             =   1560
      Width           =   5415
      Begin VB.TextBox txtduration 
         Height          =   375
         Left            =   2280
         TabIndex        =   2
         Top             =   960
         Width           =   1335
      End
      Begin VB.ComboBox txtgrade 
         Height          =   315
         ItemData        =   "Grade.frx":0000
         Left            =   2280
         List            =   "Grade.frx":0013
         TabIndex        =   3
         Top             =   1440
         Width           =   855
      End
      Begin VB.ComboBox txtempno 
         Height          =   315
         Left            =   2280
         TabIndex        =   1
         Top             =   480
         Width           =   1335
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "(Month)"
         Height          =   195
         Left            =   3600
         TabIndex        =   21
         Top             =   1080
         Width           =   540
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Employee Number"
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
         Left            =   345
         TabIndex        =   6
         Top             =   480
         Width           =   1695
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Duration"
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
         Left            =   1290
         TabIndex        =   5
         Top             =   960
         Width           =   750
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Grade"
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
         Left            =   1470
         TabIndex        =   4
         Top             =   1440
         Width           =   570
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Employee Grade (Performance)"
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
      Left            =   1200
      TabIndex        =   20
      Top             =   600
      Width           =   5565
   End
End
Attribute VB_Name = "Grade"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim vald As Boolean

Private Sub cmdclose_Click()
End
End Sub

Private Sub cmdmodify_Click()
prcEnabled
txtempno.SetFocus
End Sub

Private Sub cmdnew_Click()
prcEnabled
For Each Control In Grade
If TypeOf Control Is TextBox Then
Control.Text = ""
txtempno.Text = ""
End If
txtduration.Text = ""
txtgrade.Text = ""
'txtempno.Enabled = False
Next
rsGrade.AddNew
txtempno.SetFocus
End Sub

Public Sub prcsave()
If vald = True Then
rsGrade!Emp_no = txtempno.Text & ""
rsGrade!duration = txtduration & ""
rsGrade!Grade = txtgrade.Text & ""
rsGrade.Update
MsgBox "Data saved"
'rsgrade.Close
End If
End Sub

Public Sub prcValidate()
If fncValidate(txtempno.Text) = False Then
MsgBox "Please fill the Employee Number", vbCritical
vald = False
txtempno.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtduration.Text) = False Then
MsgBox "Please fill the Duration", vbCritical
vald = False
txtduration.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtgrade.Text) = False Then
MsgBox "Please fill the Grade", vbCritical
vald = False
txtgrade.SetFocus
Exit Sub
Else
vald = True
End If
End Sub

Private Sub cmdsave_Click()
prcValidate
If vald = True Then
prcsave
prcDisabled
End If
End Sub

Private Sub Form_Load()
prcForm
prcFillCombo1
prcDisabled
prcControl
End Sub

Public Sub prcControl()
On Error Resume Next
txtempno.Text = StrConv(Trim(rsGrade!Emp_no), vbProperCase)
txtduration.Text = StrConv(Trim(rsGrade!duration), vbProperCase)
txtgrade.Text = StrConv(Trim(rsGrade!Grade), vbProperCase)
End Sub

Public Sub prcDisabled()
For Each Control In Grade
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
For Each Control In Grade
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
rsGrade.CancelUpdate
rsGrade.MoveFirst
Call prcControl
Call prcDisabled

End Sub

Private Sub cmdfirst_Click()
On Error Resume Next
rsGrade.MoveFirst
prcControl
cmdnext.Enabled = True
cmdpre.Enabled = False
End Sub

Private Sub cmdlast_Click()
On Error Resume Next
rsGrade.MoveLast
prcControl
cmdnext.Enabled = False
cmdpre.Enabled = True
End Sub

Private Sub cmdnext_Click()
On Error Resume Next
rsGrade.MoveNext
If rsGrade.EOF Then
rsGrade.MoveLast
cmdnext.Enabled = False
End If
prcControl
cmdpre.Enabled = True
End Sub

Private Sub cmdpre_Click()
On Error Resume Next
rsGrade.MovePrevious
If rsGrade.BOF Then
rsGrade.MoveFirst
cmdpre.Enabled = False
End If
prcControl
cmdnext.Enabled = True

End Sub

Private Sub cmdback_Click()
Main.Show
Unload Me

End Sub

Private Sub cmddelete_Click()
On Error Resume Next
MsgBox "Are You Sure, You want to Delete", vbOKCancel
rsGrade.Delete
rsGrade.MoveNext
If rsGrade.EOF Then
rsGrade.MoveLast
End If
Call prcControl
Call prcDisabled
End Sub



Private Sub Form_Unload(Cancel As Integer)
rspro.Close
rsemp.Close
rsGrade.Close

End Sub


Private Sub txtduration_LostFocus()
'If Not IsNumeric(txtduration.Text) Then
' txtduration.SetFocus
'txtduration.Text = ""
'MsgBox "Please fill Duration in Numerical order", vbCritical
'End If
End Sub


Public Sub prcFillCombo1()
prcForm

rsemp.MoveFirst
Do While Not rsemp.EOF
    txtempno.AddItem rsemp!Emp_no
    rsemp.MoveNext
Loop
   
End Sub

Private Sub txtempno_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then txtduration.SetFocus

End Sub

Private Sub txtgrade_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then cmdsave.SetFocus

End Sub

Private Sub txtgrade_LostFocus()
txtgrade.Text = StrConv(txtgrade.Text, vbProperCase)
End Sub
