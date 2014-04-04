using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    mailingListClass objMailingList = new mailingListClass();
    protected void Page_Load(object sender, EventArgs e)
    {

        string urlPost = HttpContext.Current.Request.Url.AbsoluteUri;
        string[] indexNum = urlPost.Split('=');
        if (indexNum.Length > 1)
        {
            mv_tabs.ActiveViewIndex = Convert.ToInt32(indexNum[1]);
            contact_nav_menu.FindItem(indexNum[1]).Selected = true;
        }


    }

    protected void switchTabs(object sender, EventArgs e)
    {
        mv_tabs.ActiveViewIndex = Convert.ToInt32(contact_nav_menu.SelectedValue);
    }

    protected void subAddSubscriber(object sender, CommandEventArgs e)
    {
        mailingListDataContext objmailDC = new mailingListDataContext();
        Mailing_list objNewMail = new Mailing_list();
        objNewMail.firstname = txt_fname.Text;
        objNewMail.lastname = txt_lname.Text;
        objNewMail.email = txt_email.Text;

        objmailDC.Mailing_lists.InsertOnSubmit(objNewMail);
        objmailDC.SubmitChanges();
        txt_fname.Text = "";
        txt_lname.Text = "";
        txt_email.Text = "";
        lbl_thankYou.Text = "Thank you for subscribing! A confirmation email will be sent to you shortly.";
    }
}
