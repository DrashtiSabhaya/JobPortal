using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompanyApplications : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null && Session["LoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            BindData();
            SqlCommand cmd = new SqlCommand("select p.fname,p.city,p.photo,p.email,j.id from Personal_details p join Job_application j on j.emp_id=p.email where j.cmp_id='" + Session["LoggedIn"].ToString() + "'", conn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            jobseeker.DataSource = ds;
            jobseeker.DataBind();
            conn.Close();
        }
    }
    protected void BindData()
    {
        conn.Open();
    }
    protected void Shortlist_Employee(object sender, EventArgs e)
    {
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        string job_id = (item.FindControl("jobid") as TextBox).Text;
        try
        {
            string qry = "Update Job_Application set shortlist=1 where id=@jobid";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@jobid", job_id);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Sortlisted Successfully!')</script>");
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
            Response.Write("Error : " + ex);
        }
    }
}