﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //txt_username.Focus(); 
    }

    protected void subLogin(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
