using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompanyJobs : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null && Session["LoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Delete(object sender, EventArgs e)
    {

    }

    protected void btnJobPost_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Job_Post(cmp_id,post_nm,location,lsalary,usalary,type) values (@cmp_id,@post_nm,@location,@lsalary,@usalary,@type)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@cmp_id", Session["LoggedIn"].ToString());
            cmd.Parameters.AddWithValue("@post_nm", post_nm.Text);
            cmd.Parameters.AddWithValue("@location", location.Text);
            cmd.Parameters.AddWithValue("@lsalary", lsal.Text);
            cmd.Parameters.AddWithValue("@usalary", usal.Text);
            cmd.Parameters.AddWithValue("@type", type.SelectedValue);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Job Posted Successfully!')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("Error : " + ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error : " + ex.ToString());
        }
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {

    }
}