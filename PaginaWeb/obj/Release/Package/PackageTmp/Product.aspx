<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="PaginaWeb.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container vh-100">
        <div class="row mt-5">
            <div class="col-5">
                <div class="text-align-center mb-4">
                    <h5 class="display-6">Register Product</h5>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-auto">
                        <asp:Label ID="LabelCode" AssociatedControlID="TBCode" CssClass="form-control-plaintext" runat="server" Text="Code"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox TextMode="Number" ID="TBCode" Required="true" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-auto">
                        <asp:Label ID="LabelDescription" AssociatedControlID="TBDescription" CssClass="form-control-plaintext" runat="server" Text="Descripcion"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TBDescription" Required="true" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-auto">
                        <asp:Label ID="LabelPriceCost" AssociatedControlID="TBPriceCost" CssClass="form-control-plaintext" runat="server" Text="Price Cost"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TBPriceCost" Required="true" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-auto">
                        <asp:Label ID="LabelPriceSale" AssociatedControlID="TBPriceSale" CssClass="form-control-plaintext" runat="server" Text="Price Sale"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TBPriceSale" Required="true" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-auto">
                        <asp:Label ID="LabelNumberSales" AssociatedControlID="TBNumberSales" CssClass="form-control-plaintext" runat="server" Text="Number Sales"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TBNumberSales" Required="true" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <asp:Button ID="ButtonRegister" CssClass="btn btn-success" runat="server" Text="Register" />
            </div>
            <div class="col-7">
                <asp:GridView ID="GVCostumers" CssClass="table table-bordered table-condensed table-responsive table-hover" runat="server"></asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
