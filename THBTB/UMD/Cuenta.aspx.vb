
Partial Class UMD_Cuenta
    Inherits System.Web.UI.Page

    Private Sub UMD_Cuenta_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("USER") = Context.User.Identity.GetUserName()
    End Sub

    Private Sub Guardar_Click(sender As Object, e As EventArgs) Handles Guardar.Click
        Dim TA As New DSBTBTableAdapters.USUARIOTableAdapter
        Dim Usuario As String
        Usuario = Context.User.Identity.GetUserName()

        TA.UpdateUSER(Usuario, txtApellido.Text, txtDireccion.Text, txtEmail.Text, txtNumero.Text, txtNombre.Text, Usuario)
        Response.Redirect("~/UMD/Cuenta.aspx")


    End Sub
End Class
