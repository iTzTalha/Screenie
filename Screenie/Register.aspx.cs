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
    public partial class Register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            if (checkMemberExists())
            {

                Response.Write("<script>alert('Email Already Exist');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("INSERT INTO Registration(Username,Email,Birth_Date,Gender,Password) values(@Username,@Email,@Birth_DATE,@Gender,@Password)", con);
                    cmd.Parameters.AddWithValue("@Username", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@Birth_Date", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Registration Successful');</script>");


                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
        }

       
          bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Registration where Email='" + TextBox3.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }  
           

        }


    }
