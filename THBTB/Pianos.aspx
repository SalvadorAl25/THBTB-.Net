<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Pianos.aspx.vb" Inherits="Pianos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
	<br />
	<h3><asp:Label ID="lblPianos" runat="server" Text=""></asp:Label></h3>
    <hr />

    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_PRODUCTO" DataSourceID="SqlDataSourceKeys" CssClass="col-12">
        <ItemTemplate>
            <div class="row mb-lg-3">
                <div class="card" style="width: 15rem;">
                    <img class="card-img-top" src="<%# Eval("IMAGEN") %>" alt="Card image cap">
                </div>
                <div class="col-sm-9">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><a style="text-decoration: none"><%# Eval("NOMBRE_PROD") %> </a><span class="badge badge-primary">En Existencia</span></h5>
                            <hr />
                            <p class="card-text">Sonido fuerte y características profesionales te trae Epiphone con esta guitarra</p>
                            <hr />
                            <h3 class="text-primary"><%# Eval("PRECIO", "{0:c}") %></h3>
                            <hr />
                            <asp:Button ID="AgrCarr" runat="server" CssClass="btn btn-outline-primary" Text="Agregar a Carrito" />
                            <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalCenter">Ver Mas</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle"><%# Eval("NOMBRE_PROD") %><span class="badge badge-primary">En Existencia</span></h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row mb-md-3">
                                <div class="row ">
                                    <div class="card ml-md-5" style="width: 25rem; height: 25rem;">
                                        <img class="card-img-top" src="<%# Eval("IMAGEN") %>" alt="Card image cap">
                                    </div>
                                    <div style="width: 25rem;" class="ml-md-5">
                                        <hr />
                                        <p class="font-weight-bold">
                                            Precio exclusivo de Tienda En Línea (no valido en sucursales). 
					                                        <br />
                                            Los precios pueden variar sin previo aviso. 
					                                        <br />
                                            Articulo sujeto a disponibilidad. 
					                                        <br />
                                            Fotografía ilustrativa, el producto puede variar.
					                                        <br />
                                        </p>
                                        <hr />
                                        <h2 class="text-primary"><%# Eval("PRECIO", "{0:c}") %><a class="text-dark"> IVA incl.</a></h2>
                                        <hr />
                                        <p class="font-weight-bold">20   articulos Disponibles</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="button" class="btn btn-outline-primary">Agregar a Carrito</button>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource runat="server" ID="SqlDataSourceKeys" ConnectionString='<%$ ConnectionStrings:TheHardestBottonToBottonBD %>' SelectCommand="SELECT * FROM [PROD] WHERE ([CATEGORIA] LIKE '%' + @CATEGORIA + '%') ORDER BY [ID_PRODUCTO]">
        <SelectParameters>
            <asp:SessionParameter SessionField="Pianos" Name="CATEGORIA" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

