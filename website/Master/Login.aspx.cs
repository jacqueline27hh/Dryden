using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        if (Roles.IsUserInRole(user.UserName, "Admin"))
        {
            // Here is the page where to redirect 
            Response.Redirect("~/Admin-Dashboard/alert.aspx");
        }
        else if (Roles.IsUserInRole(user.UserName, "Patient"))
        {
            Response.Redirect("~/Patient-Dashboard/p_view_app.aspx");
        }
        else if (Roles.IsUserInRole(user.UserName, "Doctor"))
        {
            Response.Redirect("~/Doctor-Dashboard/doctor_view_app.aspx");
        }

    }

    //protected void lgn_main_Authenticate(object sender, AuthenticateEventArgs e)
    //{
    //    if (Membership.ValidateUser(lgn_main.UserName, lgn_main.Password))
    //    {

    //        if (Roles.IsUserInRole(lgn_main.UserName, "Admin"))
    //        {
    //            lgn_main.DestinationPageUrl = "~/Admin-Dashboard/alert.aspx";
    //        }
    //        else if (Roles.IsUserInRole(lgn_main.UserName, "Doctor"))
    //        {
    //            lgn_main.DestinationPageUrl = "~/Doctor-Dashboard/doctor_view_app.aspx";
    //        }
    //        else if (Roles.IsUserInRole(lgn_main.UserName, "Patient"))
    //        {
    //            lgn_main.DestinationPageUrl = "~/Patient-Dashboard/p_view_app.aspx";
    //        }
    //        else
    //        {
    //            Response.Write("Sorry, an error occured");
    //        }
    //    }
    //    else
    //    {
    //        Response.Write("Invalid login");
    //    }
    //}
}