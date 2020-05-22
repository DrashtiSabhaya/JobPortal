using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null && Session["LoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = (GridView1.DataKeys[e.RowIndex].Values[0]).ToString();
        using (SqlConnection con=new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("Delete from Company where id=@id"))
            {
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}