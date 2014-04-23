using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    contactClass objContact = new contactClass();
  
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
        lbl_thankYou.Text = "Thank you for subscribing!";
    }

    protected void subSubmitMsg(object sender, EventArgs e)
    {


        _strMessage(objContact.commitInsert(txtfname.Text, txtlname.Text, ddl_dept.SelectedItem.Text, txtemail.Text, txtmsg.Text), "insert");
        _subRebind();

    }
    protected void subCancel(object sender, EventArgs e)
    {
        contactClass objContactDC = new contactClass();
        txtfname.Text = string.Empty;
        txtlname.Text = string.Empty;
        //ddl_dept.Items.ToString();
        txtemail.Text = string.Empty;
        txtmsg.Text = string.Empty;
    }
    private void _strMessage(bool flag, string str)
    {
        if (flag)
            lbl_output.Text = "Message submitted";
        else
            lbl_output.Text = "Sorry, unable to " + str + "submit message";

    }
    private void _subRebind()
    {

        contactClass objContactDC = new contactClass();
        txt_fname.Text = string.Empty;
        txt_lname.Text = string.Empty;
        txtemail.Text = string.Empty;
        ddl_dept.SelectedItem.Text = string.Empty;
        txtmsg.Text = string.Empty;
    }
}
