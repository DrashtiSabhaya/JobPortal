using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompanyJobSeeker : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString);            
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null && Session["LoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if(!IsPostBack)
        {
            BindData();
            SqlCommand cmd = new SqlCommand("select * from Personal_details",conn);
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

    }
}