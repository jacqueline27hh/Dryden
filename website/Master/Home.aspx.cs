using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    alertClass objALert = new alertClass();

    protected void Page_Load(object sender, EventArgs e)

    {
        if (!Page.IsPostBack)
        {
            _subRebind();
            studentAlert(); 
        }
        
    }

    public void studentAlert()
    {
        string alertmsg = "You are viewing a student project.  The information represented here does not reflect nor is affiliated in any way with the real Dryden Regional Health Care Centre";
        System.Text.StringBuilder strBld = new System.Text.StringBuilder();
        strBld.Append("<script> window.onload=function(){ alert('" + alertmsg + "')}; </script>");
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", strBld.ToString());
    }

    private void _subRebind()
    {
        //hl_carouselleft.Attributes.Add("data-slide", "prev");
        //hl_carouselright.Attributes.Add("data-slide", "next");
        btn_alert.Attributes.Add("data-dismiss", "alert");
       
        rpt_display_alert.DataSource = objALert.getRecentAlerts();
        rpt_display_alert.DataBind();

        //foreach (RepeaterItem item in rpt_timeline.Items) { 
            
        //}
        
    }
  

}