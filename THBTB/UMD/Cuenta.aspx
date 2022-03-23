<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Cuenta.aspx.vb" Inherits="UMD_Cuenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <h4>Tu Cuenta</h4>
   

    <asp:DataList ID="DataList1" runat="server" DataKeyField="NOMBRE_US" DataSourceID="SqlDataSourceUSERView" CssClass="col-lg-10">
        <ItemTemplate>
            <h3>Bienvenido: <%# Eval("NOMBRE") %></h3>
            <hr />
            <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label">Nombre de usuario: </label>
                <div class="col-md-5">
                    <input type="text" readonly class="form-control-plaintext" id="staticEmail" value=<%# Eval("NOMBRE_US") %>>
                </div>
            </div>

            <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label">Nombre: </label>
                <div class="col-md-5">
                    <input type="text" readonly class="form-control-plaintext" value="<%# Eval("NOMBRE") %>" />
                </div>
            </div>

            <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label">Apellidos: </label>
                <div class="col-md-5">
                    <input type="text" readonly class="form-control-plaintext" value="<%# Eval("APELLIDOS") %>" />
                </div>
            </div>

            <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label">E-Mail@: </label>
                <div class="col-md-5">
                    <input type="text" readonly class="form-control-plaintext" value="<%# Eval("[E-MAIL]") %>" />
                </div>
            </div>

            <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label">Direccion: </label>
                <div>
                    <label class="col-md-9"><%# Eval("DIRECCION") %></label>
                </div>
            </div>

            <div class="form-group row">
                <label for="staticEmail" class="col-sm-4 col-form-label">Telefono: </label>
                <div class="col-md-5">
                    <input type="text" readonly class="form-control-plaintext" value="<%# Eval("TELEFONO") %>" />
                </div>
            </div>

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSourceUSERView" ConnectionString='<%$ ConnectionStrings:TheHardestBottonToBottonBD %>' SelectCommand="SELECT * FROM [USUARIO] WHERE ([NOMBRE_US] LIKE '%' + @NOMBRE_US + '%')">
        <SelectParameters>
            <asp:SessionParameter SessionField="USER" Name="NOMBRE_US" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <!-- Button trigger modal -->
    <button type="button" ID="EditarDatos" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
        Editar
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">Editar Datos</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-horizontal">
                        <asp:ValidationSummary runat="server" CssClass="text-danger" />
                        <%-- Nombre y Apellidos --%>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtNombre" CssClass="col-md-2 control-label">Nombre</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNombre"
                                    CssClass="text-danger" ErrorMessage="El campo de nombre es obligatorio." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtApellido" CssClass="col-md-2 control-label">Apellido</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtApellido" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtApellido"
                                    CssClass="text-danger" ErrorMessage="El campo de Apellido es obligatorio." />
                            </div>
                        </div>
                        <%-- Direccion --%>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtDireccion" CssClass="col-md-2 control-label">Direccion</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtDireccion" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDireccion"
                                    CssClass="text-danger" ErrorMessage="El campo direccion es obligatorio." />
                            </div>
                        </div>
                        <%-- E-Mail --%>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">E-Mail</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                                    CssClass="text-danger" ErrorMessage="El campo de E-Mail es obligatorio." />
                            </div>
                        </div>
                        <%-- Telefono --%>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="txtNumero" CssClass="col-md-2 control-label">Numero de Telefono</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="txtNumero" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNumero"
                                    CssClass="text-danger" ErrorMessage="El campo de nombre es obligatorio." />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                        <asp:Button ID="Guardar" runat="server" CssClass="btn btn-primary" Text="Guardar" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

