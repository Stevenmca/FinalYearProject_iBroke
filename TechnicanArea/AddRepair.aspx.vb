Imports System.Data
Imports System.Data.SqlClient

Partial Class TechnicanArea_AddRepair
    Inherits System.Web.UI.Page

    Protected Sub btnNewRepair_Click(sender As Object, e As EventArgs) Handles btnNewRepair.Click

        Dim AddTrackingNum As Integer
        Dim sql As String = "Select top one from Repair table by tracking number"

        Using conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\iBroke.mdf;Integrated Security=True")

            Dim cmd As New SqlCommand(sql, conn)
            Try
                conn.Open()
                AddTrackingNum = Convert.ToInt32(cmd.ExecuteScalar()) + 1
            Catch ex As Exception
                Console.WriteLine(ex.Message)
            End Try
            tbTrackNum.Text = AddTrackingNum.ToString
        End Using

        tbCustFname.Visible = True
        tbCustLname.Visible = True
        tbNum.Visible = True
        tbDevice.Visible = True
        tbDeviceProblem.Visible = True
        tbDevPasscode.Visible = True
        tbBookedIn.Visible = True
        tbBookedDate.Visible = True
        ddRepairStatus.Visible = True
        tbDetails.Visible = True
        btnConfirm.Visible = True

    End Sub
    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click

        Dim Custfname, Custlname, Custnum, Device, DeviceProblem, DevicePasscode, Bookedinby, Bookedindate, RepairStatus, RepairDetails As String
        Dim TrackNum, BookingID, RepairID As Integer

        Custfname = tbCustFname.Text
        Custlname = tbCustLname.Text
        Custnum = tbNum.Text
        Device = tbDevice.Text
        DeviceProblem = tbDeviceProblem.Text
        DevicePasscode = tbDevPasscode.Text
        Bookedinby = tbBookedIn.Text
        Bookedindate = tbBookedDate.Text
        RepairStatus = ddRepairStatus.SelectedItem.Text
        RepairDetails = tbDetails.Text
        TrackNum = tbTrackNum.Text

        Dim sqlCS As String

        sqlCS = ConfigurationManager.ConnectionStrings("UniConnString").ConnectionString
        Try
            Using sqlConn As New SqlConnection(sqlCS)
                sqlConn.Open()
                Using sqlCmd As New SqlCommand
                    sqlCmd.Connection = sqlConn
                    sqlCmd.CommandText = "NewRepair"
                    sqlCmd.CommandType = Data.CommandType.StoredProcedure

                    sqlCmd.Parameters.AddWithValue("@TrackID", TrackNum)
                    sqlCmd.Parameters.AddWithValue("@Device", Device)
                    sqlCmd.Parameters.AddWithValue("@DeviceProblem", DeviceProblem)
                    sqlCmd.Parameters.AddWithValue("@DevicePasscode", DevicePasscode)
                    sqlCmd.Parameters.AddWithValue("@Booked_in_by", Bookedinby)
                    sqlCmd.Parameters.AddWithValue("@Booked_in_Date", Bookedindate)
                    sqlCmd.Parameters.AddWithValue("@RepairStatus", RepairStatus)
                    sqlCmd.Parameters.AddWithValue("@RepairDetails", RepairDetails)

                    RepairID = sqlCmd.ExecuteScalar()


                End Using

                Using sqlCmd As New SqlCommand
                    sqlCmd.Connection = sqlConn
                    sqlCmd.CommandText = "InsertRepairCustomer"
                    sqlCmd.CommandType = Data.CommandType.StoredProcedure

                    sqlCmd.Parameters.AddWithValue("@FirstName", Custfname)
                    sqlCmd.Parameters.AddWithValue("@LastName", Custlname)
                    sqlCmd.Parameters.AddWithValue("@ContactNum", Custnum)

                    BookingID = sqlCmd.ExecuteScalar()

                End Using
            End Using

            lbldisplay.Text = "Repaired added. Please inform customer their tracking number is " + CStr(RepairID)

        Catch ex As Exception
            lbldisplay.Text = ex.ToString
        End Try


    End Sub
End Class
