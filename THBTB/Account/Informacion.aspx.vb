
Partial Class Account_Registro
    Inherits System.Web.UI.Page

    Private Sub Registrar_Click(sender As Object, e As EventArgs) Handles Registrar.Click
        Dim TA As New DSBTBTableAdapters.USUARIOTableAdapter
        Dim Usuario As String
        Usuario = Context.User.Identity.GetUserName()

        TA.InsertUSER(Usuario, txtApellido.Text, txtDireccion.Text, txtEmail.Text, txtNumero.Text, txtNombre.Text)
        Response.Redirect("~/Inicio.aspx")
    End Sub
End Class
