
Partial Class Carro_Confirmacion
    Inherits System.Web.UI.Page

    Private Sub btnContinuar_Click(sender As Object, e As EventArgs) Handles btnContinuar.Click
        Response.Redirect("~/Inicio.aspx")
    End Sub
End Class
