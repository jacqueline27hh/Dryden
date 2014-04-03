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
               
                FileUpload fup1 = (FileUpload)e.Item.FindControl("fup1");
                Image fup1Img = (Image)e.Item.FindControl("item_img1");
                string fup1SavePath = fup1Img.ImageUrl.ToString(); 
                               
                if (fup1.HasFile)z
                {
                    try
                    {
                        fup1SavePath = "C:\\Users\\Michael\\Documents\\GitHub\\Dryden\\website\\Master\\App_Themes\\images\\" + fup1.FileName.ToString();
                        fup1.SaveAs(fup1SavePath);
                        fup1SavePath = "~/App_Themes/images/" + fup1.FileName.ToString(); 
                    }
                    catch (Exception err)
                    {
                        lbl_results.Text = err.Message.ToString(); 
                    }
                }

                 lbl_results.Text = scObj.updateSlides(caption1.Text.ToString(), caption2.Text.ToString(), caption3.Text.ToString(), fup1SavePath);
                
                break;
        }
    }

    
}