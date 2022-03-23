
Partial Class Carro_Eliminar
    Inherits System.Web.UI.Page

    Private Sub Carro_Eliminar_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim IDCA As Integer
        IDCA = Request("ID_CARR")
        Dim Car As New DSBTB.CARRITODataTable
        Dim TA As New DSBTBTableAdapters.CARRITOTableAdapter
        Dim Prod As New DSBTB.PRODDataTable
        Dim TA2 As New DSBTBTableAdapters.PRODTableAdapter


        Car = TA.GetDataByCarrito(IDCA)
        'lblIDPROD.Text = Car(0).ID_PRODUCTO
        lblCant.Text = Car(0).CANTIDAD
        Prod = TA2.GetDataByidProd(Car(0).ID_PRODUCTO)
        lblNomProd.Text = Prod(0).NOMBRE_PROD
        ImgProd.ImageUrl = Prod(0).IMAGEN
        lblPrecio.Text = Format(Prod(0).PRECIO, "currency")
    End Sub

    Private Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        Dim IDCA As Integer
        IDCA = Request("ID_CARR")
        Dim Del As New DSBTB.CARRITODataTable
        Dim Ta As New DSBTBTableAdapters.CARRITOTableAdapter
        Dim IDprod As Integer
        Del = Ta.GetDataByCarrito(IDCA)
        IDprod = Del(0).ID_PRODUCTO
        Try
            Ta.DeleteByIDCarrito(IDCA)
            Response.Write("<script>window.confirm('El producto se elimino correctamente');</script>")
            Response.Redirect("carrito.aspx")
        Catch ex As Exception
            Response.Write("<script>window.confirm('El producto no pudo se eliminar');</script>")
        End Try
    End Sub
End Class
