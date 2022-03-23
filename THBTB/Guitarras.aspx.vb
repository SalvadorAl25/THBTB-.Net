
Partial Class Guitarras
    Inherits System.Web.UI.Page

    Private Sub lblGuitarras_Load(sender As Object, e As EventArgs) Handles lblGuitarras.Load
        lblGuitarras.Text = Session("Guitarras")
    End Sub
End Class
