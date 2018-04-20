Imports System.Data
Imports System.Data.SqlClient
Partial Class TechnicanArea_UpdateRepair
    Inherits System.Web.UI.Page

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click

        Dim con1 As SqlConnection
        Dim cmd1 As SqlCommand

        con1.ConnectionString = ("UniConnString")
        cmd1.Connection = con1
        con1.Open()

        cmd1.CommandText = "update Repair Set RepairStatus='" & DropDownList1.SelectedItem.Text & "' , where Repair_No = '" & txtTrackingNumber.Text & "'"

        cmd1.ExecuteNonQuery()
        con1.Close()

    End Sub
End Class
