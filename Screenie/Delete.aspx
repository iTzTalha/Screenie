<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Screenie.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
</head>
<body style="height: 100%">
    <form id="form1" runat="server">

        <div>
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <p style="margin-top: 20px; margin-left: 50px;">
                        <asp:LinkButton class="nav-link" ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton1_Click">View Users</asp:LinkButton>
                    </p>
                      <p style="margin-top:20px;margin-left:30px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton3_Click">Search Users</asp:LinkButton>
                     </p>
                    <p style="margin-top: 20px; margin-left: 30px;">
                        <asp:LinkButton class="nav-link" ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton4_Click">Delete Users</asp:LinkButton>
                    </p>

                    <p style="margin-top: 20px; margin-left: 900px;">
                        <asp:LinkButton class="nav-link" ID="LinkButton2" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%" OnClick="LinkButton2_Click">Logout</asp:LinkButton>
                    </p>

                </div>
            </nav>
        </div>

        <div style="margin-top: 170px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mx-auto">
                        <div class="row">
                            <div class="col">
                                <div class="form-group">                                  
                                    <asp:TextBox Class="form-control form-control-lg" ID="TextBox10" runat="server" placeholder=" Email address" Width="100%" Height="50px"></asp:TextBox>
                                </div>                              
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" type="button" ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
                                </div>
                                <h2 style="margin-top: 24px; font-family: Roboto; font-size: 16px; color: rgba(0, 0, 0, 1); font-weight: 200; line-height: 1.2; text-align: center;">Please enter the correct email address, once you hit the delete button the respective user will be deleted permanently.</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
