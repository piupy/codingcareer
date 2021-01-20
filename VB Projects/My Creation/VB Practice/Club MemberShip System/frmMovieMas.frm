VERSION 5.00
Begin VB.Form frmMovieMas 
   Caption         =   ":: Movie Master ::"
   ClientHeight    =   6525
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7215
   LinkTopic       =   "Form1"
   ScaleHeight     =   6525
   ScaleWidth      =   7215
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame2 
      Height          =   4575
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
         Top             =   1560
         Width           =   855
      End
      Begin VB.CommandButton cmddelete 
         Caption         =   "Delete"
         Height          =   375
         Left            =   240
         TabIndex        =   9
         Top             =   2760
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
         Width           =   855
      End
      Begin VB.CommandButton cmdmodify 
         Caption         =   "Modify"
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   2160
         Width           =   855
      End
   End
   Begin VB.Frame Frame3 
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   5160
      Width           =   5775
      Begin VB.CommandButton cmdnext 
         Caption         =   "Next"
         Height          =   375
         Left            =   480
         TabIndex        =   4
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdpre 
         Caption         =   "Previous"
         Height          =   375
         Left            =   1680
         TabIndex        =   3
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdfirst 
         Caption         =   "First"
         Height          =   375
         Left            =   2880
         TabIndex        =   2
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton cmdlast 
         Caption         =   "Last"
         Height          =   375
         Left            =   4080
         TabIndex        =   1
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Height          =   4455
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
         TabIndex        =   17
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
         TabIndex        =   16
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
         TabIndex        =   15
         Top             =   1800
         Width           =   1335
      End
      Begin VB.TextBox txtTime 
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
         Top             =   2400
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
         Left            =   600
         TabIndex        =   22
         Top             =   600
         Width           =   195
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Movie Name"
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
         TabIndex        =   21
         Top             =   1200
         Width           =   1155
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
         Index           =   0
         Left            =   600
         TabIndex        =   20
         Top             =   1800
         Width           =   435
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Show Time"
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
         TabIndex        =   19
         Top             =   2400
         Width           =   1005
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "(dd/mm/yyyy)"
         Height          =   195
         Index           =   0
         Left            =   3240
         TabIndex        =   18
         Top             =   1920
         Width           =   960
      End
   End
   Begin VB.Label Label5 
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
      Height          =   840
      Index           =   1
      Left            =   240
      TabIndex        =   25
      Top             =   960
      Width           =   6435
   End
   Begin VB.Label Label7 
      Caption         =   "Label7"
      Height          =   615
      Left            =   3000
      TabIndex        =   24
      Top             =   3000
      Width           =   2535
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Movie Master"
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
      Left            =   1920
      TabIndex        =   23
      Top             =   240
      Width           =   2355
   End
End
Attribute VB_Name = "frmMovieMas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim newCust As String
Dim temp As String
Dim vald As Boolean

Private Sub cmbType_Change()
rsTicketClassMas.Open "select * from TicketClassMas where TicketClass= '" & cmbType.Text & "'", con, adOpenDynamic, adLockOptimistic
If rsTicketClassMas.EOF = False Then
txtRate.Text = rsTicketClassMas(0)
End If
End Sub

Private Sub cmbType_Click()

rsTicketClassMas2.Open "select Rate from TicketClassMas where ClassType= '" & cmbType.Text & "'", con, adOpenDynamic, adLockOptimistic
If rsTicketClassMas2.EOF = False Then
txtRate.Text = rsTicketClassMas2(0)
rsTicketClassMas2.Close
End If
End Sub

Private Sub cmdback_Click()
Main.Show
Unload Me

End Sub

Private Sub cmdcancel_Click()
rsMovieMas.CancelUpdate
rsMovieMas.MoveFirst
Call prcControl
Call prcDisabled

End Sub

Private Sub cmdclose_Click()
End
End Sub

Private Sub cmddelete_Click()
On Error GoTo err
MsgBox "Are You Sure, You want to Delete", vbYesNo
rsMovieMas.Delete
rsMovieMas.MoveNext
If rsMovieMas.EOF Then
rsMovieMas.MoveLast
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
'.CommandText = "delete from employee where frmMovieMas_No= '" & Trim(txtempno.Text) & "'"
'.Execute
'.CommandText = "delete from grade where frmMovieMas_No='" & Trim(txtempno.Text) & "'"
'.Execute
'.CommandText = "delete from Production where frmMovieMas_No='" & Trim(txtempno.Text) & "'"
'.Execute
'End With
'
'rsMovieMas.MovePrevious
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
rsMovieMas.MoveFirst
prcControl
cmdnext.Enabled = True
cmdpre.Enabled = False

End Sub

Private Sub cmdlast_Click()
rsMovieMas.MoveLast
prcControl
cmdnext.Enabled = False
cmdpre.Enabled = True

End Sub

Private Sub cmdmodify_Click()
prcEnabled
txtname.SetFocus
End Sub

Private Sub cmdnew_Click()

Dim strAccountNumber As String
Dim a As String
Dim b As Integer
Dim c As String
Dim d As String
'd = Date
rsMovieMas.MoveLast
a = rsMovieMas!ID
b = Mid(a, 2, 4)
b = b + 1
c = b
strTitle = "New Record"
intresponse = MsgBox("Add a new record", vbYesNo, strTitle)
If intresponse = vbNo Then
Exit Sub
End If
For Each Control In frmMovieMas
If TypeOf Control Is TextBox Then
Control.Text = ""
'txttitle.Text = ""
End If
txtempno.Enabled = False
Next
prcEnabled
If b <= 9 Then
    strAccountNumber = "M000" + c
ElseIf b <= 99 Then
    strAccountNumber = "M00" + c
ElseIf b <= 999 Then
    strAccountNumber = "M0" + c
ElseIf b <= 9999 Then
    strAccountNumber = "M" + c
End If
txtempno.Text = strAccountNumber
rsMovieMas.AddNew
txtname.SetFocus
'txttitle.SetFocus

End Sub

Private Sub cmdnext_Click()
rsMovieMas.MoveNext
If rsMovieMas.EOF Then
rsMovieMas.MoveLast
cmdnext.Enabled = False
End If
prcControl
cmdpre.Enabled = True

End Sub

Private Sub cmdpre_Click()
rsMovieMas.MovePrevious
If rsMovieMas.BOF Then
rsMovieMas.MoveFirst
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
txtempno.Text = StrConv(Trim(rsMovieMas!ID), vbProperCase)
txtname.Text = StrConv(Trim(rsMovieMas!MovieName), vbProperCase)
txtdob.Text = StrConv(Trim(rsMovieMas!dom), vbProperCase)
txtTime.Text = StrConv(Trim(rsMovieMas!ShowTime), vbProperCase)
End Sub

Public Sub prcEnabled()
For Each Control In frmMovieMas
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
MsgBox "Please fill the Movie Number", , FillingForm
vald = False
txtempno.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtTime.Text) = False Then
MsgBox "Please fill the ShowTime", , FillingForm
vald = False
txtTime.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtname.Text) = False Then
MsgBox "Please fill the Movie Name", , FillingForm
vald = False
txtname.SetFocus
Exit Sub
Else
vald = True
End If
If fncValidate(txtdob.Text) = False Then
MsgBox "Please fill the Date of Movie", , FillingForm
vald = False
txtdob.SetFocus
Exit Sub
Else
vald = True
End If

End Sub



Public Sub prcDisabled()
For Each Control In frmMovieMas
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
rsMovieMas!ID = txtempno.Text & ""
rsMovieMas!MovieName = txtname.Text & ""
rsMovieMas!dom = txtdob.Text & ""
rsMovieMas!ShowTime = txtTime.Text & ""
rsMovieMas.Update
MsgBox "Data saved"
End If
End Sub
