﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Id"] != null && Session["LoggedIn"] != null)
        {
            Session["id"] = null;
            Session["LoggedIn"] = null;
            Response.Redirect("Login.aspx");
        }

    }
}