using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_imageslider : System.Web.UI.Page
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
        sliderClass scObj = new sliderClass();
        dl_slideradmin.DataSource = scObj.getAllSlides();
        dl_slideradmin.DataBind();
    }

    protected void subCommand(object sender, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "btn_save":
                sliderClass scObj = new sliderClass();
                TextBox caption1 = (TextBox)e.Item.FindControl("txt_caption1");
                TextBox caption2 = (TextBox)e.Item.FindControl("txt_caption2");
                TextBox caption3 = (TextBox)e.Item.FindControl("txt_caption3");
                lbl_results.Text = scObj.updateSlides(caption1.Text.ToString(), caption2.Text.ToString(), caption3.Text.ToString());
                break;
        }
    }

    protected void subSave()
    {
    }

    protected void subInsert()
    {
    }
    
}