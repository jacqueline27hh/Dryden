using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
<<<<<<< HEAD
       // txt_username.Focus(); 
    }
=======
        //txt_username.Focus(); 
    }

    //protected void subLogin(object sender, EventArgs e)
    //{
    //    Response.Redirect("Login.aspx");
    //}

    protected void subSearch(object sender, EventArgs e)
    {
        Response.Redirect("~/SearchResult.aspx?name=" + "'" + txt_search.Text.ToString() + "'" + "&" + "filter=" + rb_options.SelectedValue.ToString()); 
    }
    

>>>>>>> 5832de9ea7e6669a743189c7fd0ceb7aadefb1aa
}
