<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Costumer.aspx.cs" Inherits="PaginaWeb.Costumer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-5">
                <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:Button ID="submitButton" runat="server" Text="Button" OnClick="submitButton_Click" />
            </div>
            <div class="col-7">
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
