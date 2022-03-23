<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Carrito.aspx.vb" Inherits="Carro_Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <h2>Carrito de compras de :<%: Context.User.Identity.GetUserName()  %>!</h2>
    <hr />

    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_PRODUCTO" DataSourceID="SqlDataSourceCarrito" CssClass="col-12">
        <ItemTemplate>
            <div class="row mb-lg-3">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="<%# Eval("IMAGEN") %>" alt="Card image cap">
                </div>
                <div class="col-9 pr-sm-0 pl-sm-3">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><a style="text-decoration: none"><%# Eval("NOMBRE_PROD") %>  </a></h4>
                            <hr />
                            <h3 class="text-primary text-center"><%# Eval("PRECIO", "{0:c}") %></h3>
                            <h4 class="card-text text-center">Cantidad: <%# Eval("CANTIDAD") %></h4>
                            <hr />
                            <div class="card-text text-right">
                                <p>Fecha de Adicion: <%# Eval("FECHA") %></p>
                                <asp:Button ID="btnEliminar" CssClass="btn btn-outline-danger text-right" runat="server" Text="Quitar del carrito" PostBackUrl='<%# "~/Carro/Eliminar.aspx?ID_CARR=" & Eval("ID_CARRITO")  %>' />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--NOMBRE_PROD:
            <asp:Label Text='<%# Eval("NOMBRE_PROD") %>' runat="server" ID="NOMBRE_PRODLabel" /><br />
            ID_PRODUCTO:
            <asp:Label Text='<%# Eval("ID_PRODUCTO") %>' runat="server" ID="ID_PRODUCTOLabel" /><br />
            PRECIO:
            <asp:Label Text='<%# Eval("PRECIO") %>' runat="server" ID="PRECIOLabel" /><br />
            IMAGEN:
            <asp:Label Text='<%# Eval("IMAGEN") %>' runat="server" ID="IMAGENLabel" /><br />
            ID_CARRITO:
            <asp:Label Text='<%# Eval("ID_CARRITO") %>' runat="server" ID="ID_CARRITOLabel" /><br />
            CANTIDAD:
            <asp:Label Text='<%# Eval("CANTIDAD") %>' runat="server" ID="CANTIDADLabel" /><br />
            Expr1:
            <asp:Label Text='<%# Eval("Expr1") %>' runat="server" ID="Expr1Label" /><br />
            SUBTOTAL:
            <asp:Label Text='<%# Eval("SUBTOTAL") %>' runat="server" ID="SUBTOTALLabel" /><br />
            Expr2:
            <asp:Label Text='<%# Eval("Expr2") %>' runat="server" ID="Expr2Label" /><br />
            NOMBRE_US:
            <asp:Label Text='<%# Eval("NOMBRE_US") %>' runat="server" ID="NOMBRE_USLabel" /><br />
            FECHA:
            <asp:Label Text='<%# Eval("FECHA") %>' runat="server" ID="FECHALabel" /><br />
            <br />--%>
        </ItemTemplate>
    </asp:DataList>
    <hr />
    <div class="card-text text-right">
        <h5>
            <asp:Label ID="lblSub" CssClass="text-right" runat="server"></asp:Label></h5>
        <asp:Button ID="btnPagar" runat="server" Text="Pagar" CssClass="btn btn-outline-success" />
    </div>

    <asp:SqlDataSource runat="server" ID="SqlDataSourceCarrito" ConnectionString='<%$ ConnectionStrings:TheHardestBottonToBottonBD %>' SelectCommand="SELECT PROD.NOMBRE_PROD, PROD.ID_PRODUCTO, PROD.PRECIO, PROD.IMAGEN, CARRITO.ID_CARRITO, CARRITO.CANTIDAD, CARRITO.PRECIO AS Expr1, CARRITO.SUBTOTAL, CARRITO.ID_PRODUCTO AS Expr2, CARRITO.NOMBRE_US, CARRITO.FECHA FROM CARRITO INNER JOIN PROD ON CARRITO.ID_PRODUCTO = PROD.ID_PRODUCTO WHERE (CARRITO.NOMBRE_US = @NOMBRE_US)">
        <SelectParameters>
            <asp:SessionParameter SessionField="CARRITO" Name="NOMBRE_US"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

