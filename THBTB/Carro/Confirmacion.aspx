<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Confirmacion.aspx.vb" Inherits="Carro_Confirmacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <h2>Carrito de compras de :<%: Context.User.Identity.GetUserName()  %>!</h2>
    <hr />

    <div class="card text-center">
        <div class="card-header">
            ¡Proceso Completado!
        </div>
        <div class="card-body">
            <h5 class="card-title">¡Gracias por comprar!</h5>
            <p class="card-text">Solo es Cuestion de esperar <%: Context.User.Identity.GetUserName()  %></p>
            <asp:Button ID="btnContinuar" CssClass="btn btn-outline-success" runat="server" Text="Continuar" />
        </div>
        <div class="card-footer text-muted">
            BTB Te agradece tu compra
        </div>
    </div>
</asp:Content>

