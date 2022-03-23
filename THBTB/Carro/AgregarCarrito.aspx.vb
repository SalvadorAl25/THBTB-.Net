
Partial Class Carro_AgregarCarrito
    Inherits System.Web.UI.Page

    Private Sub Carro_AgregarCarrito_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Obtener el ID del producto
        Dim idProd As Integer
        idProd = Request("ID_PRODUCTO")

        Dim Productos As New DSBTB.PRODDataTable
        Dim TA As New DSBTBTableAdapters.PRODTableAdapter
        Productos = TA.GetDataByidProd(idProd)
        ImgProd.ImageUrl = Productos(0).IMAGEN
        lblNomProd.Text = Productos(0).NOMBRE_PROD
        lblCant.Text = "1"
        lblPrecio.Text = Format(Productos(0).PRECIO, "currency")
        lblSubto.Text = Format(lblPrecio.Text * 1, "currency")
    End Sub

    Private Sub btnAgregar_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click
        Dim Prodbtn As New DSBTB.PRODDataTable
        Dim TA As New DSBTBTableAdapters.PRODTableAdapter

        Dim cantidad As Integer
        Dim precio As Decimal
        Dim subtotal As Decimal
        Dim fecha As Date
        Dim idProduc As Integer
        Dim NomUs As String

        NomUs = User.Identity.Name
        idProduc = Request("ID_PRODUCTO")
        Prodbtn = TA.GetDataByidProd(idProduc)
        fecha = Now
        cantidad = 1
        precio = Prodbtn(0).PRECIO
        subtotal = cantidad * precio
        Dim TACARR As New DSBTBTableAdapters.CARRITOTableAdapter
        TACARR.InsertCARRITO(cantidad, precio, subtotal, fecha, idProduc, NomUs)
        Response.Write("<script>window.confirm('El producto se agrego correctamente');</script>")
        Response.Redirect("~/Inicio.aspx")
    End Sub
End Class
