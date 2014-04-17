using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
   ERwaitTimeClass objer = new ERwaitTimeClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        rpt_ERtime.DataSource = objer.getlatestWaittimes();
        rpt_ERtime.DataBind();

        string urlPost = HttpContext.Current.Request.Url.AbsoluteUri;
        string[] indexNum  = urlPost.Split('=');
        if (indexNum.Length > 1)
        {
           mv_tabs.ActiveViewIndex = Convert.ToInt32(indexNum[1]);
           ps_nav_menu.FindItem(indexNum[1]).Selected = true;  
        }
        
    }

    protected void switchTabs(object sender, EventArgs e)
    {
        mv_tabs.ActiveViewIndex = Convert.ToInt32(ps_nav_menu.SelectedValue);
    }
  // bind the repeater control
    ERwaitTimeClass objtime = new ERwaitTimeClass();
    private void _subRebind(object sender, EventArgs e)
    {
        btn_time.Attributes.Add("data-dismiss", "Waiting Time");

        rpt_ERtime.DataSource = objtime.getlatestWaittimes();
        rpt_ERtime.DataBind();
    }
}