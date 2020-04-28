<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Introduzione.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <div class="container col-8">
        <form id="form1" runat="server">

            <div class="form-group">
                <label for="InputNome">Nome</label>
                <asp:TextBox ID="TXTNome" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="InputCognome">Cognome</label>
                <asp:TextBox ID="TXTCognome" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="InputEta">Eta</label>
                <asp:TextBox ID="TXTEta" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="BTNSubmit" runat="server" Text="Submit" OnClick="BTNSubmit_Click" CssClass="btn btn-primary" />
                <asp:Label ID="LBLOutput" runat="server"></asp:Label>
            </div>

            <div class="row">
                <div class="col-xl-3">
                    <asp:GridView ID="GRDPerson" runat="server" CssClass="table table-striped table-borderless table-dark"></asp:GridView>
                </div>
            </div>

            <div class="form-group">
                <div class="justify-content-center">
                    <label for="userID">scrivi user</label>
                    <asp:TextBox ID="userID" runat="server"></asp:TextBox>
                </div>

                <div class="justify-content-center">
                    <label for="pswID">scrivi psw</label>
                    <asp:TextBox ID="pswID" runat="server"></asp:TextBox>
                </div>

                <div class="justify-content-center">
                    <asp:Button ID="BTNSubmitLogin" runat="server" Text="Submit" OnClick="BTNSubmitLogin_Click" CssClass="btn btn-danger" />
                </div>
                
                <asp:Label ID="LBLOutLogin" runat="server"></asp:Label>
            </div>
        </form>
    </div>

    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
