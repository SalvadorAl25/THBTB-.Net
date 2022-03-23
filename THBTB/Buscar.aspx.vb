
Partial Class Buscar
    Inherits System.Web.UI.Page

    Private Sub lblBusqueda_Load(sender As Object, e As EventArgs) Handles lblBusqueda.Load
        lblBusqueda.Text = Session("Buscar")
    End Sub


End Class
