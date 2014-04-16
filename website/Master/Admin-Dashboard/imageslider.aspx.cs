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
                TextBox title1 = (TextBox)e.Item.FindControl("txt_title1");
                TextBox title2 = (TextBox)e.Item.FindControl("txt_title2");
                TextBox title3 = (TextBox)e.Item.FindControl("txt_title3"); 
               
                FileUpload fup1 = (FileUpload)e.Item.FindControl("fup1");
                Image fup1Img = (Image)e.Item.FindControl("item_img1");
                string fup1SavePath = fup1Img.ImageUrl.ToString(); 

                FileUpload fup2 = (FileUpload)e.Item.FindControl("fup2");
                Image fup2Img = (Image)e.Item.FindControl("item_img2");
                string fup2SavePath = fup2Img.ImageUrl.ToString(); 

                FileUpload fup3 = (FileUpload)e.Item.FindControl("fup3");
                Image fup3Img = (Image)e.Item.FindControl("item_img3");
                string fup3SavePath = fup3Img.ImageUrl.ToString(); 
                               
                if (fup1.HasFile)
                {
                    try
                    {
                        fup1SavePath = "www.michaeldu.com\\Master\\App_Themes\\images\\" + fup1.FileName.ToString();
                        fup1.SaveAs(fup1SavePath); 
                        fup1SavePath = "~/App_Themes/images/" + fup1.FileName.ToString();
                        
                    }
                    catch (Exception err)
                    {
                        lbl_results.Text = err.Message.ToString(); 
                    }
                }

                if (fup2.HasFile)
                {
                    try
                    {
                        fup2SavePath = "www.michaeldu.com\\Master\\App_Themes\\images\\" + fup2.FileName.ToString();
                        fup2.SaveAs(fup2SavePath);
                        fup2SavePath = "~/App_Themes/images/" + fup2.FileName.ToString();
                    }
                    catch (Exception err)
                    {
                        lbl_results.Text = err.Message.ToString();
                    }
                }

                if (fup3.HasFile)
                {
                    try
                    {
                        fup3SavePath = "www.michaeldu.com\\Master\\App_Themes\\images\\" + fup3.FileName.ToString();
                        fup3.SaveAs(fup3SavePath);
                        fup3SavePath = "~/App_Themes/images/" + fup3.FileName.ToString();
                    }
                    catch (Exception err)
                    {
                        lbl_results.Text = err.Message.ToString();
                    }
                }

                 lbl_results.Text = scObj.updateSlides(caption1.Text.ToString(), caption2.Text.ToString(), caption3.Text.ToString(), fup1SavePath, fup2SavePath, fup3SavePath, title1.Text.ToString(),
                     title2.Text.ToString(), title3.Text.ToString());
                
                break;
        }
    }

    
}