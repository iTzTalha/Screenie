<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Screenie.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/jquery-3.3.1.slim.min.js"></script>
</head>
<body style=" height:100%;">
    <form id="form1" runat="server">
      <div class="container">
      <div class="row">
         <div class="col-md-5 mx-auto">                
             <div class="row">
                     <div class="col">
                        <center>
                           <img width="130px" src="assets/icon/user.png" style="margin-bottom:4px; margin-top:50px" />
                        </center>
                     </div>
                  </div>
                  <div class="row" style="margin-bottom:24px;">
                     <div class="col">
                        <center>                       
                            <div class="form-group">                                                      
                              <input type="file" class="form-control-file" id="exampleFormControlFile1" style="margin-top:6px; margin-left:125px">
                            </div>
                        </center>
                     </div>
                  </div>

        
             <div class="row">                  
                     <div class="col">
                         <label>Username&nbsp;</label>&nbsp;
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Username is required." ForeColor="Red"></asp:RequiredFieldValidator>
                         <div class="form-group">
                           <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox1" runat="server" placeholder="Username" Width="100%"></asp:TextBox>
                        </div> 
                         <label>Email</label>&nbsp;&nbsp;
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox3" runat="server" placeholder="Email address" TextMode="Email" Width="100%"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the valid email address." ForeColor="Red" Width="100%" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>                      
                         </div>
                 </div>


              <div class="row">                 
                  <div class="col-md-6">
                        <label>Birth date&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                        </label>
                  <div class="form-group">
                           <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox5" runat="server" placeholder="MM/DD/YY" TextMode="Date" Width="100%"></asp:TextBox>
                        </div>  
                     </div>
                        <div class="col-md-6">
                        <label>Gender</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
&nbsp;<div class="form-group">
                            <asp:DropDownList Class="form-control form-control-lg" ID="DropDownList1" runat="server" Width="100%">
                                <asp:ListItem Text="Select" Value="select" />
                                <asp:ListItem Text="Male" Value="Male" />
                                <asp:ListItem Text="Female" Value="Female" />
                                <asp:ListItem Text="Other" Value="Other" />
                            </asp:DropDownList>
                        </div>  
                     </div>

                  </div>         
             
             <div class="row">                  
                     <div class="col">
                         <label>Password&nbsp;&nbsp; </label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<div class="form-group">
                           <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" Width="100%"></asp:TextBox>
                        </div> 
                         <label>Confirm password</label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                         <div class="form-group">
                           <asp:TextBox CssClass="form-control form-control-lg" ID="TextBox4" runat="server" placeholder="Confirm password" TextMode="Password" Width="100%"></asp:TextBox>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox4" ErrorMessage="*Password doesn't match." ForeColor="Red"></asp:CompareValidator>
                        </div>  
                     </div>                     
                        
                 </div>
                       
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" type="button" ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click1" />
                        </div>  
             
                         <div align="center">
                             <p>Already have an account?<a href="Login.aspx"> Login</a></p>
                         </div>                   
            </div> 
         </div>
    </form>
</body>
</html>
