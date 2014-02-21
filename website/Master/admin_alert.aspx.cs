using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_alert : System.Web.UI.Page
{
    alertClass objAlert = new alertClass();
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
                _strMessage(objAlert.commitInsert(alert_txt_titleI.Text, alert_txt_messageI.Text), "insert");
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
                TextBox txtTitle = (TextBox)e.Item.FindControl("alert_txt_titleU");
                TextBox txtMessage = (TextBox)e.Item.FindControl("alert_txt_messageU");
                HiddenField hdfID = (HiddenField)e.Item.FindControl("alert_hdf_idU");

                int alertID = int.Parse(hdfID.Value.ToString());
                _strMessage(objAlert.commitUpdate(alertID, txtTitle.Text, txtMessage.Text), "update");
                _subRebind();
                break;
            case "Delete":
                int _id = int.Parse(((HiddenField)e.Item.FindControl("alert_hdf_idD")).Value);
                _strMessage(objAlert.commitDelete(_id), "delete");
                _subRebind();
                break;
            case "Cancel":
                _subRebind();
                break;
        }
    }
    private void _showUpdate (int id)
    {
        _panelControl(alert_pnl_update);
        alertClass _alert = new alertClass();
        alert_rpt_update.DataSource = _alert.getAlertByID(id);
        alert_rpt_update.DataBind();
    }
    private void _showDelete(int id)
    {
        _panelControl(alert_pnl_delete);
        alert_rpt_delete.DataSource = objAlert.getAlertByID(id);
        alert_rpt_delete.DataBind();
    }
    private void _panelControl(Panel pnl)
    {
        alert_pnl_all.Visible = false;
        alert_pnl_delete.Visible = false;
        alert_pnl_update.Visible = false;
        pnl.Visible = true;
        
    }
    private void _subRebind()
    {
        alert_txt_titleI.Text = string.Empty;
        alert_txt_messageI.Text = string.Empty;
        alert_rpt_all.DataSource = objAlert.getAlerts();
        alert_rpt_all.DataBind();
        _panelControl(alert_pnl_all);
    }
    private void _strMessage(bool flag, string str)
    {
        if (flag)
            alert_lbl_output.Text = "alert" + str + "was successful";
        else
            alert_lbl_output.Text = "Sorry, unable to " + str + "alert";
            
    }
}