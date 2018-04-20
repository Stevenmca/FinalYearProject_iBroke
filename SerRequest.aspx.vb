Imports System.Data
Imports System.Data.SqlClient


Partial Class SerRequest
    Inherits System.Web.UI.Page


    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim RequestID As Integer

        Dim CustFname, CustLname, contactnum, DeviceBrand, DeviceType, ServiceRequest As String


        CustFname = tbCustFname.Text
        CustLname = tbCustLname.Text
        contactnum = tbnum.Text
        DeviceBrand = tbDevBrand.Text
        DeviceType = tbDevType.Text
        ServiceRequest = tbServiceRequest.Text

        Dim sqlCS As String

        sqlCS = ConfigurationManager.ConnectionStrings("UniConnString").ConnectionString

        Try
            Using sqlConn As New SqlConnection(sqlCS)
                Dim sqlCmd As New SqlCommand
                sqlCmd.Connection = sqlConn
                sqlCmd.CommandText = "InsertIntoSerRequest"
                sqlCmd.CommandType = Data.CommandType.StoredProcedure


                sqlCmd.Parameters.AddWithValue("@CustomerForename", CustFname)
                sqlCmd.Parameters.AddWithValue("@CustomerLastname", CustLname)
                sqlCmd.Parameters.AddWithValue("@ContactNum", contactnum)
                sqlCmd.Parameters.AddWithValue("@DeviceBrand", DeviceBrand)
                sqlCmd.Parameters.AddWithValue("@DeviceType", DeviceType)
                sqlCmd.Parameters.AddWithValue("@ServiceRequest", ServiceRequest)

                sqlConn.Open()

                RequestID = sqlCmd.ExecuteScalar()

                sqlConn.Close()

            End Using

            lbldisplay.Text = "Thank you, your service request number is: " + CStr(RequestID)
        Catch ex As Exception
            lbldisplay.Text = "A run time error has occured" + ex.Message
        End Try

    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
