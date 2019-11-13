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
    public partial class Main : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            String Username = TextBox10.Text.Trim();
            SqlCommand cmd = new SqlCommand("DELETE FROM Registration WHERE Email='" + Username + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('User Deleted Successfully!');</script>");
            con.Close();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DatabaseInfo.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchUser.aspx");
        }
    }
}