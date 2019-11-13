using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Screenie
{
    public partial class Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlDataAdapter sqladpt = new SqlDataAdapter("SELECT * FROM Registration WHERE Email = '"+TextBox1.Text.Trim()+ "' AND Password = '"+ TextBox2.Text.Trim() + "' AND Usertype = '"+DropDownList1.SelectedItem.ToString()+"'",con);
                DataTable dt = new DataTable();
                sqladpt.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (DropDownList1.SelectedIndex == 1)
                    {
                        Response.Write("<script>alert('User successfully logged in!')</script>");
                    }
                    else if (DropDownList1.SelectedIndex == 2)
                    {
                        Response.Write("<script>alert('You are logged in as Admin')</script>");
                        Response.Redirect("DatabaseInfo.aspx");
                    }
                    else if(DropDownList1.SelectedIndex == 0)
                    {
                        Response.Write("<script>alert('Invalid credential')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credential')</script>");
                }
                //SqlCommand cmd = new SqlCommand("select * from Registration where Email='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + "'", con);
                //SqlDataReader dr = cmd.ExecuteReader();
                //String admin = TextBox1.Text.ToString();
                //String adminPass = TextBox2.Text.ToString();
                //if (dr.HasRows)
                //{
                //    if(admin == "admin@white.com" && adminPass == "admin")
                //    {
                //        while (dr.Read())
                //        {
                //            Response.Redirect("DatabaseInfo.aspx");
                //        }
                //    }
                //    else
                //    {
                       
                //        while (dr.Read())
                //        {
                //            Response.Write("<script>alert('Login successful');</script>");
                //        }
                //    }
                    
                //}
                //else
                //{
                //    Response.Write("<script>alert('Invalid credentials');</script>");
                //}
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }
    }
}