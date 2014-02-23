using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        if (Roles.IsUserInRole(user.UserName, "Admin"))
        {
            // Here is the page where to redirect 
            Response.Redirect("Admin-Dashboard/Admin.aspx");
        }
        else if (Roles.IsUserInRole(user.UserName, "Patient"))
        {
            Response.Redirect("Patient-Dashboard/Patient.aspx");
        }
        else if (Roles.IsUserInRole(user.UserName, "Doctor"))
        {
            Response.Redirect("Doctor-Dashboard/Doctor.aspx");
        }
    }
}
