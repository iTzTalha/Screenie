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
    public partial class SearchUser : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DatabaseInfo.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchUser.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand sqlcmd = new SqlCommand();
            String sqlquery = "SELECT * FROM Registration WHERE Email Like '%'+@Email+'%'";
            sqlcmd.CommandText = sqlquery;
            sqlcmd.Connection = con;
            sqlcmd.Parameters.AddWithValue("Email", TextBox10.Text);
            DataTable dtbl = new DataTable();
            SqlDataAdapter sadp = new SqlDataAdapter(sqlcmd);
            sadp.Fill(dtbl);
            gvsearch.DataSource = dtbl;
            gvsearch.DataBind();
        }
    }
}