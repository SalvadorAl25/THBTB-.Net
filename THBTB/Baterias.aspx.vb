
Partial Class Baterias
    Inherits System.Web.UI.Page

    Private Sub lblBaterias_Load(sender As Object, e As EventArgs) Handles lblBaterias.Load
        lblBaterias.Text = Session("Baterias")
    End Sub
End Class
