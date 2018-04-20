
Partial Class ManagerArea_veCustomer
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        GridView1.Visible = True
        GridView2.Visible = False
    End Sub
    Protected Sub btned_Click(sender As Object, e As EventArgs) Handles btned.Click
        GridView1.Visible = False
        GridView2.Visible = True
    End Sub
End Class
