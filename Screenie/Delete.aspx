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
<body>
    <form id="form1" runat="server">
        <div style="margin-top:100px;">
           <div class="container">
               
      <div class="row">
         <div class="col-md-4 mx-auto">                       
                  <div class="row">
                     <div class="col">
                        <div class="form-group">
                            <div style="margin-bottom:4px">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Please enter the Correct Email address." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                           
                            
                            <asp:TextBox Class="form-control form-control-lg" ID="TextBox10" runat="server" placeholder="Email address" Width="100%"></asp:TextBox>
                        </div>                                             
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" type="button" ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
                        </div>                          
                     </div>
                  </div>
               </div>
            </div> 
         </div>
   
        </div>
    </form>
</body>
</html>
