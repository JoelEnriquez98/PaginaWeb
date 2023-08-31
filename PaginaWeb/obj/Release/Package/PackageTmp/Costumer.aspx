<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Costumer.aspx.cs" Inherits="PaginaWeb.Costumer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container vh-100">
        <div class="row mt-5">
            <div class="col-lg-4 col-md-9">
                <div class="text-align-center mb-4">
                    <h5 class="display-6">Register Costumer</h5>
                </div>
                <div class="row g-3 mb-4 col-s-12">
                    <div class="col-auto">
                        <asp:Label ID="LabelName" AssociatedControlID="TBName" CssClass="form-control-plaintext" runat="server" Text="Name"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TBName" Required="true" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-auto">
                        <asp:Label ID="LabelDPI" AssociatedControlID="TBDPI" CssClass="form-control-plaintext" runat="server" Text="DPI"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TBDPI" Required="true" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-auto">
                        <asp:Label ID="LabelDate" AssociatedControlID="TBBirth" CssClass="form-control-plaintext" runat="server" Text="Birth"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TBBirth" Required="true" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row g-3 mb-4">
                    <div class="col-auto">
                        <asp:Label ID="LabelNumber" AssociatedControlID="TBPhone" CssClass="form-control-plaintext" runat="server" Text="Phone"></asp:Label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TBPhone" Required="true" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="col-lg-2 col-md-3 col-s-12">
                <div class="row text-center">
                    <div class="col-lg-12 mb-2">
                        <asp:Button ID="ButtonRegister" CssClass="btn btn-success w-100" runat="server" Text="Register" OnClick="submitButton_Click" />
                    </div>
                    <div class="col-lg-12 mb-2">
                        <asp:Button ID="ButtonEdit" CssClass="btn btn-warning w-100" runat="server" Text="Edit" />
                    </div>
                    <div class="col-lg-12 mb-2">
                        <asp:Button ID="ButtonDelete" CssClass="btn btn-danger w-100" runat="server" Text="Delete" />
                    </div>
                </div>

            </div>
            <div class="col-lg-6 col-md-12 col-s-12">
                <asp:GridView ID="GVCostumers" CssClass="table table-bordered table-condensed table-responsive table-hover" runat="server"></asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
