using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hl_carouselleft.Attributes.Add("data-slide", "prev");
        hl_carouselright.Attributes.Add("data-slide", "next");
        btn_alert.Attributes.Add("data-dismiss", "alert");
    }
}