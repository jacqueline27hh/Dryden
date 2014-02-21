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

    }

    protected void main_login_Authenticate(object sender, AuthenticateEventArgs e)
    {
    //    if (Membership.ValidateUser(main_login.UserName, main_login.Password))
    //    {

    //        if (Roles.IsUserInRole(main_login.UserName, "Admin"))
    //        {
    //            main_login.DestinationPageUrl = "~/Admin-Dashboard/Admin.aspx";
    //        }
    //        else if (Roles.IsUserInRole(main_login.UserName, "Doctor"))
    //        {
    //            main_login.DestinationPageUrl = "~/Doctor-Dashboard/Doctor.aspx";
    //        }
    //        else if (Roles.IsUserInRole(main_login.UserName, "Patient"))
    //        {
    //            main_login.DestinationPageUrl = "~/Patient-Dashboard/Patient.aspx";
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
    }
}