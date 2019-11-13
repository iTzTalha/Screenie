<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Screenie.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 120px;
            height: 118px;
        }
    </style>
</head>
<body style=" height:100%;">
    <form id="form1" runat="server">
        <div style="margin-top:60px">     
            <center>
             <img class="auto-style1" src="assets/icon/screenie_icon.png"/>
             <h1 style="margin-top:24px; font-family:Roboto; font-size:40px; font-weight:300; color: rgba(0, 0, 0, 1); -webkit-font-smoothing: antialiased;text-align:center;">Screenie</h1>
             <h2 style="margin-top:24px; font-family:Roboto; font-size:16px; color: rgba(0, 0, 0, 1); font-weight: 200; line-height: 1.2;text-align:center;">Instantly connect with people in your life.</h2>
             <h2 style="margin-top:20px; margin-bottom:24px; font-family:Roboto; font-size:16px; color: rgba(0, 0, 0, 1); font-weight: 200; line-height: 1.2;text-align:center;">Sign in to get started.</h2>
            </center>
         </div>
        

   <div class="container">
      <div class="row">
         <div class="col-md-4 mx-auto">                       
                  <div class="row">
                     <div class="col">
                        <div class="form-group">
                           <asp:TextBox Class="form-control form-control-lg" ID="TextBox1" runat="server" placeholder=" Email address" TextMode="Email" Width="100%" Height="50px"></asp:TextBox>
                        </div>                      
                        <div class="form-group">
                           <asp:TextBox Class="form-control form-control-lg" ID="TextBox2" runat="server" placeholder=" Password" TextMode="Password" Width="100%" Height="50px"></asp:TextBox>
                        </div>
                         <div style="margin-bottom:10px; align-content:center; align-items:center;">
                            
                                  <asp:DropDownList ID="DropDownList1" Width="150px" Height="30px" runat="server">
                                      <asp:ListItem>Select User Type</asp:ListItem>
                                     <asp:ListItem>User</asp:ListItem>
                                     <asp:ListItem>Admin</asp:ListItem>
                                 </asp:DropDownList>
                             
                                 <a href="Home.aspx" style="float:right">Forgot password?</a>
                         </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" type="button" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        </div>   
                         <div align="center">
                             <a href="Register.aspx">Creat an account?</a><br>
                         </div>
                     </div>
                  </div>
               </div>
            </div> 
         </div>
    </form>
                    
</body>
</html>
