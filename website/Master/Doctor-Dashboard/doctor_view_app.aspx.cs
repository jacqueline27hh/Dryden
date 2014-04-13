using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Doctor_Dashboard_Default : System.Web.UI.Page
{
    appointmentClass objAppointment = new appointmentClass();
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
                _strMessage(objAppointment.commitInsert(txt_pnameI.Text, DateTime.Parse(txt_dateI.Text.ToString()), txt_titleI.Text), "insert");
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
                TextBox txtPname = (TextBox)e.Item.FindControl("txt_pnameU");
                TextBox txtDname = (TextBox)e.Item.FindControl("txt_dnameU");
                TextBox txtDate = (TextBox)e.Item.FindControl("txt_dateU");
                TextBox txtTitle = (TextBox)e.Item.FindControl("txt_titleU");
                HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_idU");
                int appointmentID = int.Parse(hdfID.Value.ToString());
                _strMessage(objAppointment.commitUpdate(appointmentID, txtPname.Text, DateTime.Parse(txt_dateI.Text.ToString()), txtTitle.Text), "update");
                _subRebind();
                break;
            case "Delete":
                int _id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idD")).Value);
                _strMessage(objAppointment.commitDelete(_id), "delete");
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
        appointmentClass _appointment = new appointmentClass();
        rpt_update.DataSource = _appointment.getAppointmentByID(id);
        rpt_update.DataBind();
    }

    private void _showDelete(int id)
    {
        _panelControl(pnl_delete);
        rpt_delete.DataSource = objAppointment.getAppointmentByID(id);
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
        txt_pnameI.Text = string.Empty;
        txt_dnameI.Text = string.Empty;
        txt_dateI.Text = string.Empty;
        txt_titleI.Text = string.Empty;
        Guid _id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());
        rpt_all.DataSource = objAppointment.getDoctor(_id);
        rpt_all.DataBind();
        _panelControl(pnl_all);
    }

    private void _strMessage(bool flag, string str)
    {
        if (flag)
            lbl_message.Text = "Appointment " + str + " was successful";
        else
            lbl_message.Text = "Sorry, unable to " + str + " appointment";
    }
}