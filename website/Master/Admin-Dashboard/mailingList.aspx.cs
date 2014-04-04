using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mailingList : System.Web.UI.Page
{
    mailingListClass objmailingList = new mailingListClass();
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
            case "Insert":
                _strMessage(objmailingList.commitInsert (txt_fnameI.Text, txt_lnameI.Text, txt_emailI.Text), "insert");
                _subRebind();
                break;
            case "Update":
                _showUpdate(int.Parse(e.CommandArgument.ToString()));
                break;
            case "Delete":
                _showDelete(int.Parse(e.CommandArgument.ToString()));
                break;
        }
    }

    protected void subUpDel(object sender, RepeaterCommandEventArgs e)
    {
        switch (e.CommandName)
        { 
            case "Update":
                TextBox txtFname = (TextBox)e.Item.FindControl("txt_fnameU");
                TextBox txtLname = (TextBox)e.Item.FindControl("txt_lnameU");
                TextBox txtEmail = (TextBox)e.Item.FindControl("txt_emailU");
                HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_idU");
                int mailID = int.Parse(hdfID.Value.ToString());
                _strMessage (objmailingList.commitUpdate (mailID, txtFname.Text, txtLname.Text, txtEmail.Text), "update");
                _subRebind();
                break;
            case "Delete":
                int _id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idD")).Value);
                _strMessage(objmailingList.commitDelete(_id), "delete");
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
        mailingListClass _mailingList = new mailingListClass();
        rpt_update.DataSource = _mailingList.getMailing_listByID(id);
        rpt_update.DataBind();
    }

    private void _showDelete(int id)
    {
        _panelControl(pnl_delete);
        rpt_delete.DataSource = objmailingList.getMailing_listByID(id);
        rpt_delete.DataBind();
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
        txt_fnameI.Text = string.Empty;
        txt_lnameI.Text = string.Empty;
        txt_emailI.Text = string.Empty;
        rpt_all.DataSource = objmailingList.getMailing_list();
        rpt_all.DataBind();
        _panelControl(pnl_all);
    }

    private void _strMessage(bool flag, string str)
    {
        if (flag)
            lbl_message.Text = "Subscriber " + str + " was successful";
        else
            lbl_message.Text = "Sorry, unable to " + str + " subscriber";
    }
}