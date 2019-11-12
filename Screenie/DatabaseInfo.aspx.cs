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
    public partial class DatabaseInfo : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlDataAdapter sqladater = new SqlDataAdapter("SELECT * FROM Registration", con);
                DataTable dtbl = new DataTable();
                sqladater.Fill(dtbl);
                gvUsers.DataSource = dtbl;
                gvUsers.DataBind();
            }
            catch
            {

            }
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }
    }
}