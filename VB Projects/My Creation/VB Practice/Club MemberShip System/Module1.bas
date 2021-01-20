Attribute VB_Name = "Module1"
Public con  As Connection
Public com As Command
Public rsemp As Recordset
Public rsemp2 As Recordset
Public rsempId As Recordset
Public rsemp3 As Recordset
Public rspro As Recordset
Public rsGrade As Recordset
Public rsMS As Recordset
Public rsMS2 As Recordset
Public rsFeed As Recordset
Public rsFeedBack As Recordset
Public rsBill As Recordset
Public rsCusBill As Recordset
Public rsBill2 As Recordset


Public Sub prcForm()
Set con = New Connection
Set com = New Command
Set rsemp = New Recordset
Set rsCusBill = New Recordset
Set rsempId = New Recordset
Set rsemp2 = New Recordset
Set rsemp3 = New Recordset
Set rspro = New Recordset
Set rsGrade = New Recordset
Set rsMS = New Recordset
Set rsMS2 = New Recordset
Set rsFeed = New Recordset
Set rsFeedBack = New Recordset
Set rsBill = New Recordset
Set rsBill2 = New Recordset
With con
    .ConnectionString = "data source = " & App.Path & "\MemberShip.mdb"
    .Provider = "Microsoft.Jet.OLEDB.4.0"
    .Open
End With
com.ActiveConnection = con
rsemp.Open "select * from Customer order by Emp_no", con, adOpenDynamic, adLockOptimistic
rsMS.Open "select * from MemberShipchargeMas", con, adOpenDynamic, adLockOptimistic
rsFeedBack.Open "select * from FeedBack", con, adOpenDynamic, adLockOptimistic
rsBill.Open "select * from Bill", con, adOpenDynamic, adLockOptimistic
rsCusBill.Open "select * from CustomerBill", con, adOpenDynamic, adLockOptimistic
'rsGrade.Open "select * from grade", con, adOpenDynamic, adLockOptimistic
'rsempId.Open "select * from Customer", con, adOpenDynamic, adLockOptimistic

End Sub

Public Function fncValidate(chk As String) As Boolean
If Len(Trim(chk)) = 0 Then
fncValidate = False
Else
fncValidate = True
End If
End Function

