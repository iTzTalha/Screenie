<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Screenie.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" 
    <link href="fontawesome/css/all.css" rel="stylesheet" />

    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image: url('assets/img/bg@2x.jpg'); width:100%; height: 800px;">

             <nav class="navbar navbar-expand-lg navbar-light">
                 <br />
                 <br />
                 <br />
                 <br />
                <a class="navbar-brand" href="#"><img src="assets/icon/screenie_icon.png" width="40" height="40" style="margin-left:170px" />           
                </a>
                 <br />
                 <br />

                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <p>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:LinkButton class="nav-link" ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="41px" OnClick="LinkButton4_Click">Login</asp:LinkButton>
                     </p>
                </div>
 
            </nav> 

             <br>
             <br>
             <br>
             <br>
             <br>
             <h1 style="margin-left:210px; font-family: Roboto; font-size: 40px; font-weight: bold; color: #000000; width: 222px;">Welcome to Screenie!</h1>
             <blockquote style="margin-left:210px; font-family: Roboto; font-size: 19px; color: #999999; width: 304px;">A simple way to text, video chat and plan things all in one place.</blockquote>
            <img src="assets/icon/apple.png" style="margin-left:210px; padding-bottom:5px"/>
            <br>
            <img src="assets/icon/android.png" style="margin-left:210px;"/>

            </div>

         <footer>
                <p style="margin-left:300px; padding-bottom:5px; font-family: Roboto; font-size: 14px; color: #999999;" >&copy Screenie 2019. The Apple and Google Play logos are trademarks of their respective owners.View our <strong style="color:rgba(0, 0, 0, 0.8);">Data Policy</strong> and <strong style="color:rgba(0, 0, 0, 0.8);">Terms</strong>.</p>
         </footer>

    </form>
</body>
</html>
