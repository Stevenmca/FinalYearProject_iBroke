Imports System.Data
Imports System.Data.SqlClient
Partial Class Delivery
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim OrderID As Integer

        Dim Custfname, Custlname, Address, City, County, Postcode, CustDate, Number As String

        Custfname = tbCustFname.Text
        Custlname = tbCustLname.Text
        Address = tbAddress.Text
        City = tbCity.Text
        County = tbCounty.Text
        Postcode = tbPostcode.Text
        CustDate = tbdate.Text
        Number = tbnum.Text

        Dim sqlCS As String

        sqlCS = ConfigurationManager.ConnectionStrings("UniConnString").ConnectionString

        Try
            Using sqlConn As New SqlConnection(sqlCS)
                Dim sqlCmd As New SqlCommand
                sqlCmd.Connection = sqlConn
                sqlCmd.CommandText = "InsertOrder"
                sqlCmd.CommandType = Data.CommandType.StoredProcedure

                sqlCmd.Parameters.AddWithValue("@First_Name", Custfname)
                sqlCmd.Parameters.AddWithValue("@Last_Name", Custlname)
                sqlCmd.Parameters.AddWithValue("@Address", Address)
                sqlCmd.Parameters.AddWithValue("@City", City)
                sqlCmd.Parameters.AddWithValue("@County", County)
                sqlCmd.Parameters.AddWithValue("@Postcode", Postcode)
                sqlCmd.Parameters.AddWithValue("@Date", CustDate)
                sqlCmd.Parameters.AddWithValue("@Number", Number)

                sqlConn.Open()

                OrderID = sqlCmd.ExecuteScalar()

                sqlConn.Close()

            End Using




            lbldisplay.Text = "Success.Delivery Details noted. Please proceed to Payment page. Your Order Number is " + CStr(OrderID)
            btnPayment.Visible = "True"
        Catch ex As Exception
            lbldisplay.Text = "A run time error has occured" + ex.Message
        End Try



    End Sub
    Protected Sub btnPayment_Click(sender As Object, e As EventArgs) Handles btnPayment.Click
        Response.Redirect("Payment.aspx")
    End Sub
End Class
