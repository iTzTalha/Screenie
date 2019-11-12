<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseInfo.aspx.cs" Inherits="Screenie.DatabaseInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
</head>
<body style="height:100%">
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light">
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">                    
                     <p style="margin-top:20px;margin-left:30px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%">View Users</asp:LinkButton>
                     </p>

                     <p style="margin-top:20px;margin-left:30px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton4_Click">Delete Users</asp:LinkButton>
                     </p>

                      <p style="margin-top:20px;margin-left:930px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton2_Click">Logout</asp:LinkButton>
                     </p>

                </div>
            </nav>
        </div>

        <asp:GridView ID="gvUsers" runat="server" CssClass="container" AutoGenerateColumns="false">

            <Columns>

                <asp:BoundField DataField="Username" HeaderText="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Bith_Date" HeaderText="Birth Date" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Password" HeaderText="Password" />

            </Columns>

        </asp:GridView>

    </form>
</body>
</html>
