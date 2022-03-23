<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="AgregarCarrito.aspx.vb" Inherits="Carro_AgregarCarrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <br />
    <br />
    <br />
    <h3>¡Bienvenido: <%: Context.User.Identity.GetUserName()  %>!</h3>
    <h4>Agregar al carrito</h4>
    <hr />

    <%-- Targeta Agregar Carrito --%>
    <div class="row mb-lg-3 text-center">
        <div class="card" style="width: 15rem;">
            <asp:Image ID="ImgProd" CssClass="card-img-top" runat="server" alt="Card image cap" />
        </div>
        <div class="col-9 pr-sm-0 pl-sm-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><a style="text-decoration: none">
                        <asp:Label ID="lblNomProd" runat="server"></asp:Label>
                    </a><span class="badge badge-primary">En Existencia</span></h5>
                    <%-- <asp:Label ID="lblProducto" runat="server" Text=""></asp:Label>--%>
                    <hr />
                    <h3>Precio: <asp:Label ID="lblPrecio" runat="server" CssClass="card-text"></asp:Label></h3>
                    <hr />
                    <p>Cantidad: <asp:Label ID="lblCant" runat="server" CssClass="card-text"></asp:Label></p>
                    <hr />
                    <h4 class="text-primary">SubTotal:  <asp:Label ID="lblSubto" runat="server" CssClass="card-text"></asp:Label></h4>
                    <hr />
                    <asp:Button ID="btnAgregar" runat="server" CssClass="btn btn-outline-success" Text="Agregar a Carrito" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

