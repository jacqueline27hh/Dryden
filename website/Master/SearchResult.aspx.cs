using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (PreviousPage != null)
        {
            sds_search.SelectCommand = "SELECT * FROM [search_API] WHERE fname = '" + Response.Cookies["search"].Value.ToString() + "'";
            rpt_search.DataSourceID = "sds_search";   
            rpt_search.DataBind(); 
            Response.Cookies["search"].Expires = DateTime.Now.AddMinutes(-1); 
        }
    }
}