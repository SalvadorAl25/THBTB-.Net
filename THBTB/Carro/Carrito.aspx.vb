
Partial Class Carro_Carrito
    Inherits System.Web.UI.Page

    Private Sub Carro_Carrito_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("CARRITO") = User.Identity.Name
        Dim TA As New DSBTBTableAdapters.CARRITOTableAdapter
        Dim use As String
        use = User.Identity.GetUserName

        lblSub.Text = "Subtotal Carrito: " & FormatCurrency(TA.SUMSUBTOT_byUSER(use))
    End Sub

    Private Sub btnPagar_Click(sender As Object, e As EventArgs) Handles btnPagar.Click
        Dim TA As New DSBTBTableAdapters.CARRITOTableAdapter
        Dim use As String = User.Identity.Name
        TA.DeletePagar(use)
        Response.Redirect("~/Carro/Confirmacion.aspx")
    End Sub
End Class
