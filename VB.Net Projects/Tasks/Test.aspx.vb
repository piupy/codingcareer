
Partial Class Tasks_Test
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Write("<script>alert('Mail Sent Successfully');</script>")
    End Sub
End Class
