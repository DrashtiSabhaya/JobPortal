using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EducationalProfile : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from Educational_details where email='" + emailid + "'", conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ssc.Text = dr["ssc"].ToString();
                hsc.Text = dr["hsc"].ToString();
                gcourse.Text= dr["graduation"].ToString();
                guni.Text = dr["university"].ToString();
                gcgpa.Text = dr["cgpa"].ToString();
                pgcourse.Text = dr["pg"].ToString();
                pguni.Text = dr["pg_university"].ToString();
                pgcgpa.Text = dr["pg_cgpa"].ToString();
                award.Text = dr["awards"].ToString();
            }
            dr.Close();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error : " + ex.ToString());
        }
    }
    protected void btnEducationSave_click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Educational_details(email,ssc,hsc,graduation,university,cgpa,pg,pg_university,pg_cgpa,awards) values (@email,@ssc,@hsc,@graduation,@university,@cgpa,@pg,@pg_university,@pg_cgpa,@awards)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            cmd.Parameters.AddWithValue("@email", Session["LoggedIn"].ToString());
            cmd.Parameters.AddWithValue("@ssc", ssc.Text);
            cmd.Parameters.AddWithValue("@hsc", hsc.Text);
            cmd.Parameters.AddWithValue("@graduation", gcourse.Text);
            cmd.Parameters.AddWithValue("@university", guni.Text);
            cmd.Parameters.AddWithValue("@cgpa", gcgpa.Text);
            cmd.Parameters.AddWithValue("@pg", pgcourse.Text);
            cmd.Parameters.AddWithValue("@pg_university", pguni.Text);
            cmd.Parameters.AddWithValue("@pg_cgpa", pgcgpa.Text);
            cmd.Parameters.AddWithValue("@awards", award.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Educational Data Saved Successfully!')</script>");
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