
Partial Class Pianos
    Inherits System.Web.UI.Page

    Private Sub lblPianos_Load(sender As Object, e As EventArgs) Handles lblPianos.Load
        lblPianos.Text = Session("Pianos")
    End Sub


End Class
