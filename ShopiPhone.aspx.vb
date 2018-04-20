
Partial Class ShopiPhone
    Inherits System.Web.UI.Page
    Dim ProductID As Integer
    Dim ProductName As String
    Public Price As Double
    Public Sum As Integer
    Dim Total As Double
    Dim calc As New Calculator



    Protected Sub btnAddiphone1_Click(sender As Object, e As EventArgs) Handles btnAddiphone1.Click

        Page.Validate()

        If Page.IsValid Then
            ProductID = "1"
            Session("ProductID") = ProductID

            ProductName = "iPhoneX"
            Session("ProductName1") = ProductName

            Price = 959.0
            Session("Price1") = Price.ToString("F2")

            Sum = CInt(tbiphonex.Text)
            Session("Sum1") = Sum

            Total = calc.Calculate(Price, Sum)
            Session("Pur1") = Total.ToString("F2")

            tbiphonex.Text = ""
        End If



    End Sub
    Protected Sub tbAddiphone2_Click(sender As Object, e As EventArgs) Handles tbAddiphone2.Click

        Page.Validate()

        If Page.IsValid Then
            ProductID = "2"
            Session("ProductID") = ProductID

            ProductName = "iPhone8p"
            Session("ProductName2") = ProductName

            Price = 699.0
            Session("Price2") = Price.ToString("F2")

            Sum = CInt(tbiphone8p.Text)
            Session("Sum2") = Sum

            Total = calc.Calculate(Price, Sum)
            Session("Pur2") = Total.ToString("F2")

            tbiphone8p.Text = ""
        End If



    End Sub
    Protected Sub tbAddiphone8_Click(sender As Object, e As EventArgs) Handles tbAddiphone8.Click

        Page.Validate()

        If Page.IsValid Then
            ProductID = "3"
            Session("ProductID") = ProductID

            ProductName = "iPhone8"
            Session("ProductName3") = ProductName

            Price = 539.0
            Session("Price3") = Price.ToString("F2")

            Sum = CInt(tbiphone8.Text)
            Session("Sum3") = Sum

            Total = calc.Calculate(Price, Sum)
            Session("Pur3") = Total.ToString("F2")

            tbiphone8.Text = ""

        End If

    End Sub
    Protected Sub tbAddiphone7p_Click(sender As Object, e As EventArgs) Handles tbAddiphone7p.Click

        Page.Validate()

        If Page.IsValid Then
            ProductID = "4"
            Session("ProductID") = ProductID

            ProductName = "iPhone7p"
            Session("ProductName4") = ProductName

            Price = 445.0
            Session("Price4") = Price.ToString("F2")

            Sum = CInt(tbiphone7p.Text)
            Session("Sum4") = Sum

            Total = calc.Calculate(Price, Sum)
            Session("Pur4") = Total.ToString("F2")

            tbiphone7p.Text = ""

        End If


    End Sub
    Protected Sub btnCart_Click(sender As Object, e As EventArgs) Handles btnCart.Click
        Response.Redirect("ShopCart.aspx")
    End Sub
End Class
