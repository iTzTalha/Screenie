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
                     <p style="margin-top:20px;margin-left:50px;"> 
                         <asp:LinkButton class="nav-link" ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Roboto" Font-Overline="False" ForeColor="#737373" Width="100%">View Users</asp:LinkButton>
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

         <div align="center">
             </br>
            <asp:Label ID="successmessage" runat="server" Text="" ForeColor="Green"></asp:Label>
            <asp:Label ID="errormessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>


        <div style="margin-top:25px">
             <asp:GridView ID="gvUsers" runat="server" CssClass="container table-bordered" cellpadding="10" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="RegistrationID" ShowHeaderWhenEmpty="true" OnRowCommand="gvUsers_RowCommand" OnRowEditing="gvUsers_RowEditing" OnRowCancelingEdit="gvUsers_RowCancelingEdit" OnRowUpdating="gvUsers_RowUpdating" OnRowDeleting="gvUsers_RowDeleting">

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
               

            <Columns>

               <%-- <asp:BoundField DataField="Username" HeaderText="Username"/>
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Birth_Date" HeaderText="Birth Date" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Password" HeaderText="Password" />--%>

                <asp:TemplateField HeaderText="Username">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Username") %>' runat="server"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtUsername" Text='<%# Eval("Username") %>' runat="server"/>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtUsernameFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Email") %>' runat="server"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmail" Text='<%# Eval("Email") %>' runat="server"/>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmailFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Date of birth">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Birth_Date") %>' runat="server"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtBirthDate" Text='<%# Eval("Birth_Date") %>' runat="server"/>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtBirthDateFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Gender") %>' runat="server"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtGender" Text='<%# Eval("Gender") %>' runat="server"/>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtGenderFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label Text='<% #Eval("Password") %>' runat="server"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPassword" Text='<%# Eval("Password") %>' runat="server"/>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtPasswordFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="User Type">
                    <ItemTemplate>
                        <asp:Label Text='<% #Eval("Usertype") %>' runat="server"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtUsertype" Text='<%# Eval("Usertype") %>' runat="server"/>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtUsertypeFooter" runat="server"/>
                    </FooterTemplate>
                </asp:TemplateField>

                <%--For actons on User--%> 

                <asp:TemplateField>

                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="assets/icon/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" />
                        <asp:ImageButton ImageUrl="assets/icon/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" />
                    </ItemTemplate>

                    <EditItemTemplate>
                         <asp:ImageButton ImageUrl="assets/icon/save.png" runat="server" CommandName="Update" ToolTip="Update" />
                        <asp:ImageButton ImageUrl="assets/icon/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" />
                    </EditItemTemplate>

                    <FooterTemplate>
                        <asp:ImageButton ImageUrl="assets/icon/add.png" runat="server" CommandName="Addnew" ToolTip="Add new" />
                    </FooterTemplate>

                </asp:TemplateField>

            </Columns>

        </asp:GridView>

        </div>

    </form>
</body>
</html>
