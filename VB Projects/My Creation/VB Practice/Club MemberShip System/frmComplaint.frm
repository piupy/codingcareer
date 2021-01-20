VERSION 5.00
Begin VB.Form frmComplaint 
   Caption         =   "FeedBack\Complaint"
   ClientHeight    =   6000
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5940
   LinkTopic       =   "Form1"
   ScaleHeight     =   6000
   ScaleWidth      =   5940
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "&Save"
      Height          =   495
      Left            =   1560
      TabIndex        =   2
      Top             =   5160
      Width           =   1935
   End
   Begin VB.ComboBox cmbName 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   480
      Left            =   1440
      TabIndex        =   1
      Top             =   600
      Width           =   3975
   End
   Begin VB.Label Label1 
      Caption         =   "Name:"
      BeginProperty Font 
         Name            =   "Bookman Old Style"
         Size            =   15.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
End
Attribute VB_Name = "frmComplaint"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim newCust As String
Dim temp As String
Dim vald As Boolean

Private Sub Command1_Click()
prcValidate
If vald = True Then
prcsave

End If

End Sub

Private Sub Form_Load()
prcForm
prcControl

End Sub

Public Sub prcControl()
rsFeed.Open "Select distinct(Emp_Name) from Customer", con, adOpenDynamic, adLockOptimistic
Do
 cmbName.AddItem rsFeed(0)
rsFeed.MoveNext
Loop Until rsFeed.EOF
End Sub

Public Sub prcValidate()
If fncValidate(txtFeedback.Text) = False Then
MsgBox "Please fill the Complaint\FeedBack Box", , FillingForm
vald = False
txtFeedback.SetFocus
Else
vald = True
End If

End Sub

Public Sub prcsave()
If vald = True Then
rsFeedBack!Customer = cmbName.Text & ""
rsFeedBack!FeedBack = txtFeedback.Text & ""
rsFeedBack.Update
MsgBox "Data saved"
End If
End Sub

