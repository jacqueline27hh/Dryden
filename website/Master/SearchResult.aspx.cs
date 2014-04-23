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

        if (Request.QueryString["filter"] == "all")
        {
            sds_search.SelectCommand = "SELECT * FROM [search_API]";
        }
        else
        {
            sds_search.SelectCommand = "SELECT * FROM [search_API] WHERE " + Request.QueryString["filter"] + " = " + Request.QueryString["name"];
        }
           
            rpt_search.DataSourceID = "sds_search";
            rpt_search.DataBind();

        
                    
    }

}