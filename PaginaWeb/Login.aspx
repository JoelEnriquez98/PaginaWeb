<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PaginaWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <title>Login</title>
</head>
<body>
    <form id="formLogin" runat="server" style="background-color: #b4d9ee">
        <div class="container">
            <div class="vh-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card shadow-2-strong" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">

                                <h3 class="mb-5">Sign in</h3>

                                <div class="form-outline mb-4">
                                    <asp:TextBox ID="TBUserName" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                                    <asp:Label ID="LabelUserName" AssociatedControlID="TBUserName" CssClass="form-label" runat="server" Text="Username"></asp:Label>
                                </div>

                                <div class="form-outline mb-4">
                                    <asp:TextBox ID="TBPassword" TextMode="Password" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                                    <asp:Label ID="LabelPassword" AssociatedControlID="TBPassword" CssClass="form-label" runat="server" Text="Password"></asp:Label>
                                </div>
                                <asp:Button ID="ButtonLogin" class="btn btn-primary btn-lg btn-block" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
