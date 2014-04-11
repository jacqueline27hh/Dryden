using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class patients_survey : System.Web.UI.Page
{
    surveyClass objSurvey = new surveyClass();
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

    protected void subUpDel(object sender, RepeaterCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "Update":
                TextBox txtFname = (TextBox)e.Item.FindControl("txtFnameU");
                TextBox txtLname = (TextBox)e.Item.FindControl("txtLnameU");
                TextBox txtEmail = (TextBox)e.Item.FindControl("txtEmailU");
                TextBox txtRev = (TextBox)e.Item.FindControl("txtRevU");
                TextBox txtMsg = (TextBox)e.Item.FindControl("txtMsgU");
                HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_idU");
                int surveyID = int.Parse(hdfID.Value.ToString());
                _strMessage(objSurvey.commitUpdate(surveyID, txtFname.Text, txtLname.Text, txtEmail.Text, txtRev.Text, txtMsg.Text), "update");
                _subRebind();
                break;
            case "Delete":
                int _id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idD")).Value);
                _strMessage(objSurvey.commitDelete(_id), "delete");
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
        surveyClass _survey = new surveyClass();
        rpt_update.DataSource = _survey.getpatient_surveyByID(id);
        rpt_update.DataBind();
    }

    private void _showDelete(int id)
    {
        _panelControl(pnl_delete);
        rpt_delete.DataSource = objSurvey.getpatient_surveyByID(id);
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

        rpt_all.DataSource = objSurvey.getpatient_survey();
        rpt_all.DataBind();
        _panelControl(pnl_all);
    }

    private void _strMessage(bool flag, string str)
    {
        if (flag)
            lbl_message.Text = "Feedback " + str + " was successful";
        else
            lbl_message.Text = "Sorry, unable to " + str + " feedback";
    }
}
