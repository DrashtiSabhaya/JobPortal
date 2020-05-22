using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompanyProfile : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null && Session["LoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        email.Text = Session["LoggedIn"].ToString();
        try
        {
            SqlCommand cmd = new SqlCommand("select * from Company where email='"+email.Text+"'",conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                name.Text = dr["name"].ToString();
                city.Text = dr["city"].ToString();
                address.Text = dr["adrs"].ToString();
            }
            dr.Close();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error : " + ex.ToString());
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Company(name,city,adrs,email,photo) values (@name,@city,@adrs,@email,@photo)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            string str = photo.FileName;
            photo.PostedFile.SaveAs(Server.MapPath("~/CompanyUploads/" + str));
            string img = "~/CompanyUploads/" + str.ToString();
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@city", city.Text);
            cmd.Parameters.AddWithValue("@adrs", address.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@photo", img);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Company Data Saved Successfully!')</script>");
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
}