using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class google_map : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            subRebind();
        }
    }

    protected void subRebind()
    {
        googleMap gmObj = new googleMap();
        dl_gmap.DataSource = gmObj.getData(); 
        dl_gmap.DataBind();
    }

    protected void subCommand(object sender, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "btn_save":
                googleMap gmObj = new googleMap();
                TextBox lat = (TextBox)e.Item.FindControl("txt_lat");
                TextBox lng = (TextBox)e.Item.FindControl("txt_lng");
                lbl_results.Text = gmObj.updateData(lat.Text.ToString(), lng.Text.ToString());
                subRebind(); 
                break;
        }
    }
}

