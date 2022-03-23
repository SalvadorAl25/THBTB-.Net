<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Informacion.aspx.vb" Inherits="Account_Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <h2>Informacion</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Datos de envio</h4>
        <hr />
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

    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <asp:Button runat="server" ID="Registrar" Text="Registrarse" CssClass="btn btn-default" />
        </div>
    </div>

</asp:Content>

