<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web_umg_bd._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <asp:Label ID="lbl_codigo" runat="server" CssClass="badge" Text="Codigo"></asp:Label>
                    <asp:TextBox ID="txt_codigo" runat="server" CssClass="form-control" placeholder="E001"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_nombres" runat="server" CssClass="badge" Text="Nombres"></asp:Label>
                    <asp:TextBox ID="txt_nombres" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_apellidos" runat="server" CssClass="badge" Text="Apellidos"></asp:Label>
                    <asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_direccion" runat="server" CssClass="badge" Text="Direccion"></asp:Label>
                    <asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                    <asp:Label ID="lbl_telefono" runat="server" CssClass="badge" Text="Telefono"></asp:Label>
                    <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_fn" runat="server" CssClass="badge" Text="Fecha Nacimiento"></asp:Label>
                    <asp:TextBox ID="txt_fn" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lbl_sangre" runat="server" CssClass="badge" Text="Puesto"></asp:Label>
                    <asp:DropDownList ID="drop_puesto" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
                <asp:Button ID="btn_agregar" runat="server" Text="Agregar" CssClass="btn btn-info btn-lg btn-block" OnClick="btn_agregar_Click" />
                <asp:Button ID="btn_modificar" runat="server" OnClick="btn_modificar_Click" Text="Modificar" CssClass="btn btn-success btn-lg btn-block" Visible="False" />
                <asp:Label ID="lbl_mensaje" runat="server" CssClass="alert-info"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <asp:GridView ID="grid_empleados" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" DataKeyNames="id,id_puesto" OnRowDeleting="grid_empleados_RowDeleting" OnSelectedIndexChanged="grid_empleados_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Select" Text="Ver" CssClass="btn btn-info" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" OnClientClick="javascript:if(!confirm('¿Desea Eliminar?'))return false" CssClass="btn btn-danger" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="codigo" HeaderText="Codigo" />
                        <asp:BoundField DataField="nombres" HeaderText="Nombres" />
                        <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
                        <asp:BoundField DataField="direccion" HeaderText="Direccion" />
                        <asp:BoundField DataField="telefono" HeaderText="Telefono" />
                        <asp:BoundField DataField="fecha_nacimiento" DataFormatString="{0:d}" HeaderText="Nacimiento" />
                        <asp:BoundField DataField="puesto" HeaderText="Puesto" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
