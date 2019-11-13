<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchUser.aspx.cs" Inherits="Screenie.SearchUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <nav class="navbar navbar-expand-lg navbar-light">
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">                    
                     <p style="margin-top:20px;margin-left:50px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton1_Click">View Users</asp:LinkButton>
                     </p>
                      <p style="margin-top:20px;margin-left:30px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton3_Click">Search Users</asp:LinkButton>
                     </p>

                     <p style="margin-top:20px;margin-left:30px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton4_Click">Delete Users</asp:LinkButton>
                     </p>

                      <p style="margin-top:20px;margin-left:900px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton2_Click">Logout</asp:LinkButton>
                     </p>

                </div>
            </nav>
        </div>

        <div style="margin-top:50px">

            <div class="container">
                <div class="row">
                    <div class="col-md-4 mx-auto">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox Class="form-control form-control-lg" ID="TextBox10" runat="server" placeholder=" Email address" Width="150%" Height="50px"></asp:TextBox>
                                </div>
                                </div>
                               <div class="col-md-6">
                                    <div class="form-group" style="margin-left:60px;">
                                    <asp:Button class="btn btn-primary btn-lg" type="button" ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                                </div>

                               </div>
                        </div>
                    </div>
                </div>
            </div>
            <div style="margin-top:25px;">
                <asp:GridView ID="gvsearch" runat="server" CssClass="container" cellpadding="10" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Record Found...!" >
                       <%-- Theme Properties --%>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle HorizontalAlign="center" BackColor="#006AFF" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle HorizontalAlign="center" ForeColor="#000066"/>
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
               
            </asp:GridView>
               
            </div>
        </div>

    </form>
</body>
</html>
