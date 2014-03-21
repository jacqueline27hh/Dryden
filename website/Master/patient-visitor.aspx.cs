﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    surveyClass objSurvey = new surveyClass();
    protected void Page_Load(object sender, EventArgs e)
    {

        string urlPost = HttpContext.Current.Request.Url.AbsoluteUri;
        string[] indexNum = urlPost.Split('=');
        if (indexNum.Length > 1)
        {
            mv_tabs.ActiveViewIndex = Convert.ToInt32(indexNum[1]);
            pv_nav_menu.FindItem(indexNum[1]).Selected = true;
        }

    }

    protected void switchTabs(object sender, EventArgs e)
    {
        mv_tabs.ActiveViewIndex = Convert.ToInt32(pv_nav_menu.SelectedValue);
    }
    protected void subSubmit(object sender, EventArgs e)
    {
        
    }
}
    