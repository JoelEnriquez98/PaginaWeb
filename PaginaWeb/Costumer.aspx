<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Costumer.aspx.cs" Inherits="PaginaWeb.Costumer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container vh-100">
        <div class="row mt-5">
            <div class="col-lg-4 col-md-9">
                <div class="w-100 d-flex flex-column align-items-center justify-content-around">
                    <div class="text-align-center mb-4">
                        <h5 class="display-6">Register Costumer</h5>
                    </div>
                    <div class="row g-3 mb-4">
                        <div class="col-auto">
                            <asp:Label ID="LabelNIT" AssociatedControlID="TextBoxNIT" CssClass="form-control-plaintext" runat="server" Text="NIT"></asp:Label>
                        </div>
                        <div class="col-auto">
                            <asp:TextBox ID="TextBoxNIT" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row g-3 mb-4 col-s-12">
                        <div class="col-auto">
                            <asp:Label ID="LabelNames" AssociatedControlID="TextBoxNames" CssClass="form-control-plaintext" runat="server" Text="Nombres"></asp:Label>
                        </div>
                        <div class="col-auto">
                            <asp:TextBox ID="TextBoxNames" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row g-3 mb-4 col-s-12">
                        <div class="col-auto">
                            <asp:Label ID="LabelLastNames" AssociatedControlID="TextBoxLastNames" CssClass="form-control-plaintext" runat="server" Text="Apellidos"></asp:Label>
                        </div>
                        <div class="col-auto">
                            <asp:TextBox ID="TextBoxLastNames" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row g-3 mb-4">
                        <div class="col-auto">
                            <asp:Label ID="LabelAddress" AssociatedControlID="TextBoxAddress" CssClass="form-control-plaintext" runat="server" Text="Direccion"></asp:Label>
                        </div>
                        <div class="col-auto">
                            <asp:TextBox ID="TextBoxAddress" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row g-3 mb-4">
                        <div class="col-auto">
                            <asp:Label ID="LabelNumber" AssociatedControlID="TextBoxPhone" CssClass="form-control-plaintext" runat="server" Text="Telefono"></asp:Label>
                        </div>
                        <div class="col-auto">
                            <asp:TextBox ID="TextBoxPhone" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>


            </div>
            <div class="col-lg-2 col-md-3 col-s-12">
                <div class="row text-center">
                    <div class="col-lg-12 mb-2">
                        <asp:Button ID="ButtonRegister" CssClass="btn btn-success w-100" runat="server" Text="Registrar" OnClick="submitButton_Click" />
                    </div>
                    <div class="col-lg-12 mb-2">
                        <asp:Button ID="ButtonEdit" CssClass="btn btn-warning w-100" runat="server" Text="Editar" />
                    </div>
                    <div class="col-lg-12 mb-2">
                        <asp:Button ID="ButtonDelete" CssClass="btn btn-danger w-100" runat="server" Text="Eliminar" />
                    </div>
                    <div class="col-lg-12 mb-2">
                        <asp:Button ID="ButtonCleanData" CssClass="btn btn-secondary w-100" runat="server" Text="Limpiar Formulario" OnClick="ButtonCleanData_Click"></asp:Button>
                    </div>

                </div>

            </div>
            <div class="col-lg-6 col-md-12 col-s-12">
                <div class="table-responsive">
                    <div class="row mb-1">
                        <div class="d-flex">
                            <div class="p-2">
                                <asp:Label runat="server" Text="Filtrar:"></asp:Label>
                            </div>
                            <div class="p-2">
                                <asp:TextBox CssClass="form-control" ID="TextBoxFilter" runat="server"></asp:TextBox>
                            </div>
                            <div class="ml-auto p-2">
                                <asp:Button ID="ButtonFilter" CssClass="btn btn-outline-primary" runat="server" Text="Filtrar" OnClick="filterButton_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                    <asp:GridView ID="GVCostumers" CssClass="table table-bordered table-condensed table-responsive table-hover" runat="server" AllowPaging="True" AllowSorting="true" OnSorting="GVCostumers_Sorting" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="nit" HeaderText="NIT" SortExpression="nit"></asp:BoundField>
                            <asp:BoundField DataField="names" HeaderText="Nombres" SortExpression="names"></asp:BoundField>
                            <asp:BoundField DataField="last_names" HeaderText="Apellidos" SortExpression="last_names"></asp:BoundField>
                            <asp:BoundField DataField="address" HeaderText="Direccion" SortExpression="address"></asp:BoundField>
                            <asp:BoundField DataField="phone" HeaderText="Telefono" SortExpression="phone"></asp:BoundField>
                            <asp:ButtonField Text="Select" ControlStyle-CssClass="btn btn-info" ButtonType="Button"></asp:ButtonField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
