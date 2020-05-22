using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserJobs : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select cmp.name,cmp.photo,j.* from Job_post j Join Company cmp on cmp.email=j.cmp_id", conn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            jobs.DataSource = ds;
            appliedjobs.DataSource = ds;
            jobs.DataBind();
            appliedjobs.DataBind();
            conn.Close();
        }
    }
    protected void BindData()
    {
        conn.Open();
    }
    protected void Apply_Job(object sender, EventArgs e)
    {
        RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
        string job_id = (item.FindControl("jobid") as TextBox).Text;
        string cmp_id = (item.FindControl("cmpid") as TextBox).Text;
        string emp_id = Session["LoggedIn"].ToString();
        try
        {
            string qry = "insert into Job_Application(emp_id,cmp_id,job_id,shortlist,applied) values (@empid,@cmpid,@jobid,@shortlist,@applied)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@empid", emp_id);
            cmd.Parameters.AddWithValue("@cmpid", cmp_id);
            cmd.Parameters.AddWithValue("@jobid", job_id);
            cmd.Parameters.AddWithValue("@shortlist", "0");
            cmd.Parameters.AddWithValue("@applied", "1");
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Applied Successfully!')</script>");
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
    protected void Delete(object sender, EventArgs e)
    {

    }
}