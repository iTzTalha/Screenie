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

            if (!IsPostBack)
            {
                populateGridView();
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

        void populateGridView()
        {
            try
            {
                DataTable dtbl = new DataTable();
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlDataAdapter sqladater = new SqlDataAdapter("SELECT * FROM Registration", con);
                    sqladater.Fill(dtbl);
                }
                if(dtbl.Rows.Count > 0)
                {
                    gvUsers.DataSource = dtbl;
                    gvUsers.DataBind();
                }
                else
                {
                    dtbl.Rows.Add(dtbl.NewRow());
                    gvUsers.DataSource = dtbl;
                    gvUsers.DataBind();
                    gvUsers.Rows[0].Cells.Clear();
                    gvUsers.Rows[0].Cells.Add(new TableCell());
                    gvUsers.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                    gvUsers.Rows[0].Cells[0].Text = "No data Found...!";
                    gvUsers.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }
                
            }
            catch
            {

            }
        }

        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("Addnew"))
                {
                    SqlConnection con = new SqlConnection(strcon);
                    con.Open();
                    String query = "INSERT INTO Registration (Username,Email,Birth_Date,Gender,Password) VALUES(@Username,@Email,@Birth_Date,@Gender,@Password)";
                    SqlCommand sqlcomd = new SqlCommand(query, con);
                    sqlcomd.Parameters.AddWithValue("@Username", (gvUsers.FooterRow.FindControl("txtUsernameFooter") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@Email", (gvUsers.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@Birth_Date", (gvUsers.FooterRow.FindControl("txtBirthDateFooter") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@Gender", (gvUsers.FooterRow.FindControl("txtGenderFooter") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@Password", (gvUsers.FooterRow.FindControl("txtPasswordFooter") as TextBox).Text.Trim());
                    sqlcomd.ExecuteNonQuery();
                    populateGridView();
                    successmessage.Text = "New User added successfully";
                    errormessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                successmessage.Text = "";
                errormessage.Text = ex.Message;
            }
        }

        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUsers.EditIndex = e.NewEditIndex;
            populateGridView();
        }

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsers.EditIndex = -1;
            populateGridView();
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    String query = "DELETE FROM Registration RegistratonID=@id";
                    SqlCommand sqlcomd = new SqlCommand(query, con);
                    sqlcomd.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value.ToString()));
                    sqlcomd.ExecuteNonQuery();
                    populateGridView();
                    successmessage.Text = "User deleted successfully";
                    errormessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                successmessage.Text = "";
                errormessage.Text = ex.Message;
            }
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    String query = "UPDATE Registration SET Username=@Username,Email=@Email,Birth_Date=@Birth_Date,Gender=@Gender,Password=@Password WHERE RegistratonID=@id";
                    SqlCommand sqlcomd = new SqlCommand(query, con);
                    sqlcomd.Parameters.AddWithValue("@Username", (gvUsers.Rows[e.RowIndex].FindControl("txtUsername") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@Email", (gvUsers.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@Birth_Date", (gvUsers.Rows[e.RowIndex].FindControl("txtBirthDate") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@Gender", (gvUsers.Rows[e.RowIndex].FindControl("txtGender") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@Password", (gvUsers.Rows[e.RowIndex].FindControl("txtPassword") as TextBox).Text.Trim());
                    sqlcomd.Parameters.AddWithValue("@id", Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value.ToString()));
                    sqlcomd.ExecuteNonQuery();
                    gvUsers.EditIndex = -1;
                    populateGridView();
                    successmessage.Text = "User updated successfully";
                    errormessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                successmessage.Text = "";
                errormessage.Text = ex.Message;
            }
        }
    }
}