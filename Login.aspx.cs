using System;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataReader dr = null;
            SqlCommand cmd = null;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString);
            conn.Open();
            cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            string id = userId.SelectedValue;
            cmd.CommandText = "select * from Register where userid='" + id + "'and email='" + email.Text + "' and pwd='"+password.Text+"'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["Id"] = id;
                Session["LoggedIn"] = email.Text;
                if (id == "1")
                    Response.Redirect("UserHome.aspx");
                else if (id == "2")
                    Response.Redirect("CompanyHome.aspx");
                else
                    Response.Redirect("AdminHome.aspx");
            }
            else
                Label1.Text = "Username or password is incorrect!";
            dr.Close();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error : " + ex);
        }
    }
}