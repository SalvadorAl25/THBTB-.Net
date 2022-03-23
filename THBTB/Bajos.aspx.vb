
Partial Class Bajos
    Inherits System.Web.UI.Page

    Private Sub lblBajos_Load(sender As Object, e As EventArgs) Handles lblBajos.Load
        lblBajos.Text = Session("Bajos")
    End Sub
End Class
