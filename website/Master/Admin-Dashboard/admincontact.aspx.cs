using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminContact : System.Web.UI.Page
{
    contactClass objContact = new contactClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _subRebind();
        }

    }
    protected void subAdmin(object sender, CommandEventArgs e)
    {
        switch (e.CommandName)
        {

            case "Update":
                _showUpdate(int.Parse(e.CommandArgument.ToString()));
                break;
            case "Delete":
                _showDelete(int.Parse(e.CommandArgument.ToString()));
                break;

        }
    }
    protected void subUpDel(object sender, DataListCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "Update":
                TextBox txtfname = (TextBox)e.Item.FindControl("txt_fnameU");
                TextBox txtMessage = (TextBox)e.Item.FindControl("txt_messageU");
                TextBox txtlname = (TextBox)e.Item.FindControl("txt_lnameU");
                TextBox txtdept = (TextBox)e.Item.FindControl("txt_deptU");
                TextBox txtemail = (TextBox)e.Item.FindControl("txt_emailU");
                HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_idU");

                int contactID = int.Parse(hdfID.Value.ToString());
                _strMessage(objContact.commitUpdate(contactID, txtfname.Text, txtlname.Text, txtdept.Text, txtemail.Text, txtMessage.Text), "update");
                _subRebind();
                break;
            case "Delete":
                int _id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idD")).Value);
                _strMessage(objContact.commitDelete(_id), "delete");
                _subRebind();
                break;
            case "Cancel":
                _subRebind();
                break;
        }
    }
    private void _showUpdate(int id)
    {
        _panelControl(pnl_update);
        contactClass _contact = new contactClass();
        dtl_update.DataSource = _contact.getContactByID(id);
        dtl_update.DataBind();
    }
    private void _showDelete(int id)
    {
        _panelControl(pnl_delete);
        dtl_del.DataSource = objContact.getContactByID(id);
        dtl_del.DataBind();
    }
    private void _panelControl(Panel pnl)
    {
        pnl_all.Visible = false;
        pnl_delete.Visible = false;
        pnl_update.Visible = false;
        pnl.Visible = true;

    }
    private void _subRebind()
    {

        contactClass objContactDC = new contactClass();
        dtl_updel_all.DataSource = objContactDC.getContacts();
        dtl_updel_all.DataBind();
    }
    private void _strMessage(bool flag, string str)
    {
        //if (flag)
        //    lbl_output.Text = "alert" + str + "was successful";
        //else
        //   lbl_output.Text = "Sorry, unable to " + str + "alert";

    }
}