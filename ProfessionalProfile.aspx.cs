using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProfessionalProfile : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null && Session["LoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        string emailid = Session["LoggedIn"].ToString();
        try
        {
            SqlCommand cmd = new SqlCommand("select * from Professional_details where email='" + emailid + "'", conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                category.Text = dr["category"].ToString();
                workarea.Text = dr["area"].ToString();
                company.Text = dr["company"].ToString();
                role.Text = dr["role"].ToString();
                salary.Text = dr["salary"].ToString();
                expe.Text = dr["experiance"].ToString();
                skills.Text = dr["skills"].ToString();
            }
            dr.Close();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error : " + ex.ToString());
        }
    }

    protected void btnProfessionalSave_click(object sender, EventArgs e)
    {
        try
        {
            string email = Session["LoggedIn"].ToString();
            string qry = "insert into Professional_details(email,category,area,company,role,salary,experiance,skills,resume) values (@email,@category,@area,@company,@role,@salary,@experiance,@skills,@resume)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            string str = resume.FileName;
            resume.PostedFile.SaveAs(Server.MapPath("~/UserResume/" + str));
            string res = "~/UserResume/" + str.ToString();
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@category", category.SelectedValue);
            cmd.Parameters.AddWithValue("@area", workarea.SelectedValue);
            cmd.Parameters.AddWithValue("@company", company.Text);
            cmd.Parameters.AddWithValue("@role", role.Text);
            cmd.Parameters.AddWithValue("@salary", salary.Text);
            cmd.Parameters.AddWithValue("@experiance", expe.Text);
            cmd.Parameters.AddWithValue("@skills", skills.Text);
            cmd.Parameters.AddWithValue("@resume", res);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Professional Data Saved Successfully!')</script>");
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