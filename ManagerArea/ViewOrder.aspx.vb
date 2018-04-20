Imports System.Data
Imports System.Data.SqlClient
Partial Class ManagerArea_ViewOrder
    Inherits System.Web.UI.Page


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        GridView2.Visible = True
    End Sub
    Protected Sub btnHide_Click(sender As Object, e As EventArgs) Handles btnHide.Click
        GridView2.Visible = False
    End Sub
End Class
