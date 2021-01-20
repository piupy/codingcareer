VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5070
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7965
   LinkTopic       =   "Form1"
   ScaleHeight     =   5070
   ScaleWidth      =   7965
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "STARS BY   'UNTIL LOOP'"
      Height          =   375
      Left            =   2280
      TabIndex        =   2
      Top             =   1560
      Width           =   3975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "STARS BY'WHILE LOOP'"
      Height          =   375
      Left            =   2280
      TabIndex        =   1
      Top             =   1080
      Width           =   3975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "STARS BY 'FOR LOOP'"
      Height          =   375
      Left            =   2280
      TabIndex        =   0
      Top             =   600
      Width           =   3975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For I = 1 To 10
Print "*"; "    ";
Next
End Sub

Private Sub Command2_Click()
I = 1
Do While I <= 10
Print "*"
I = I + 1
Loop
End Sub

Private Sub Command3_Click()
I = 1
Do Until I <= 10
Print "*"
I = I + 1
Loop
End Sub
