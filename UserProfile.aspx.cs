using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class UserProfile : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] == null && Session["LoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        email.Text = Session["LoggedIn"].ToString();
        conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["JobConnection"].ConnectionString);
        try
        {
            SqlCommand cmd = new SqlCommand("select * from Personal_details where email='" + email.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                fname.Text = dr["fname"].ToString();
                lname.Text = dr["lname"].ToString();
                gender.Text = dr["gen"].ToString();
                dob.Text = dr["dob"].ToString();
                city.Text = dr["city"].ToString();
                address.Text = dr["adrs"].ToString();
                mbno.Text = dr["mbno"].ToString();
            }
            dr.Close();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error : " + ex.ToString());
        }
    }

    protected void btnPersonalSave_click(object sender, EventArgs e)
    {
        try
        {
            string qry = "insert into Personal_details(fname,lname,photo,gen,dob,city,adrs,mbno,email) values (@fname,@lname,@photo,@gen,@dob,@city,@adrs,@mbno,@email)";
            SqlCommand cmd = new SqlCommand(qry, conn);
            string str = photo.FileName;
            photo.PostedFile.SaveAs(Server.MapPath("~/UserUploads/" + str));
            string img = "~/UserUploads/" + str.ToString();
            cmd.Parameters.AddWithValue("@fname", fname.Text);
            cmd.Parameters.AddWithValue("@lname", lname.Text);
            cmd.Parameters.AddWithValue("@photo", img);
            cmd.Parameters.AddWithValue("@gen", gender.SelectedValue);
            cmd.Parameters.AddWithValue("@dob", dob.Text);
            cmd.Parameters.AddWithValue("@city", city.Text);
            cmd.Parameters.AddWithValue("@adrs", address.Text);
            cmd.Parameters.AddWithValue("@mbno", mbno.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Personal Data Saved Successfully!')</script>" );
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