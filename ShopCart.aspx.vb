Imports System.IO
Imports System.Data
Imports System.Data.SqlClient

Partial Class ShopCart
    Inherits System.Web.UI.Page

    Dim Pur1 As Double
    Dim Pur2 As Double
    Dim Pur3 As Double
    Dim Pur4 As Double

    Dim TotalCost As Double
    Dim calc As New Calculator

    Dim Sum As Integer

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lblProduct1.Text = Session("ProductName1")
        lblProduct2.Text = Session("ProductName2")
        lblProduct3.Text = Session("ProductName3")
        lblProduct4.Text = Session("ProductName4")

        lblPrice1.Text = Session("Price1")
        lblPrice2.Text = Session("Price2")
        lblPrice3.Text = Session("Price3")
        lblPrice4.Text = Session("Price4")

        lblQuantity1.Text = Session("Sum1")
        lblQuantity2.Text = Session("Sum2")
        lblQuantity3.Text = Session("Sum3")
        lblQuantity4.Text = Session("Sum4")

        Pur1 = Session("Pur1")
        Pur2 = Session("Pur2")
        Pur3 = Session("Pur3")
        Pur4 = Session("Pur4")

        lblTotal1.Text = Session("Pur1")
        lblTotal2.Text = Session("Pur2")
        lblTotal3.Text = Session("Pur3")
        lblTotal4.Text = Session("Pur4")

        TotalCost = calc.Calculate2(Pur1, Pur2, Pur3, Pur4)
        lblTotalCost.Text = TotalCost.ToString("F2")



    End Sub
    Protected Sub btnPayment_Click(sender As Object, e As EventArgs) Handles btnPayment.Click
        Response.Redirect("Delivery.aspx")
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session.Remove("ProductName1")
        Session.Remove("Price1")
        Session.Remove("Sum1")
        Session.Remove("Pur1")
        Response.Redirect("ShopCart.aspx")

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session.Remove("ProductName2")
        Session.Remove("Price2")
        Session.Remove("Sum2")
        Session.Remove("Pur2")
        Response.Redirect("ShopCart.aspx")



    End Sub
    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Session.Remove("ProductName3")
        Session.Remove("Price3")
        Session.Remove("Sum3")
        Session.Remove("Pur3")
        Response.Redirect("ShopCart.aspx")
    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Session.Remove("ProductName4")
        Session.Remove("Price4")
        Session.Remove("Sum4")
        Session.Remove("Pur4")
        Response.Redirect("ShopCart.aspx")
    End Sub
End Class
