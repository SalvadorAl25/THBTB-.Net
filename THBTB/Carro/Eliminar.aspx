<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Eliminar.aspx.vb" Inherits="Carro_Eliminar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <hr />
    <div class="row mb-lg-3 text-center">
        <div class="card" style="width: 15rem;">
            <asp:Image ID="ImgProd" CssClass="card-img-top" runat="server" alt="Card image cap" />
        </div>
        <div class="col-9 pr-sm-0 pl-sm-3">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-title">Deseas Eliminar: </h3>
                    <h5 class="card-title"><a style="text-decoration: none"><asp:Label ID="lblNomProd" runat="server"></asp:Label></a></h5>
                    <hr />
                    <h4 class="text-primary card-text">Precio: <asp:Label ID="lblPrecio" runat="server"></asp:Label></h4>
                    <h4 class="card-text" >Cantidad: <asp:Label ID="lblCant" runat="server"></asp:Label></h4>
                    <hr />
                    <div class="text-right"><asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-outline-primary" Text="Eliminar" /></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

