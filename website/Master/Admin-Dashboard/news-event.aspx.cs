using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class news_event : System.Web.UI.Page
{
    timelineClass objTime = new timelineClass();

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
                _strMessage(objTime.commitInsert(timeline_txt_imageI.Text, timeline_txt_textI.Text, DateTime.Parse(timeline_txt_dateI.Text.ToString())), "insert");
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
                TextBox txtImage = (TextBox)e.Item.FindControl("timeline_txt_imageU");
                TextBox txtText = (TextBox)e.Item.FindControl("timeline_txt_textU");
                TextBox txtDate = (TextBox)e.Item.FindControl("timeline_txt_dateU");
                HiddenField hdfID = (HiddenField)e.Item.FindControl("timeline_hdf_idU");

                int timelineID = int.Parse(hdfID.Value.ToString());
                _strMessage(objTime.commitUpdate(timelineID, txtImage.Text, txtText.Text, DateTime.Parse(txtDate.Text.ToString())), "udpate");
                _subRebind();
                break;
            case "Delete":
                int _id = int.Parse(((HiddenField)e.Item.FindControl("timeline_hdf_idD")).Value);
                _strMessage(objTime.commitDelete(_id), "delete");
                _subRebind();
                break;
            case "Cancel":
                _subRebind();
                break;
        }
    }
    private void _showUpdate(int id)
    {
        _panelControl(timeline_pnl_update);
        timelineClass _time = new timelineClass();
        timeline_rpt_update.DataSource = _time.getTimelineByID(id);
        timeline_rpt_update.DataBind();


    }

    private void _showDelete(int id)
    {
        _panelControl(timeline_pnl_delete);
        timeline_rpt_delete.DataSource = objTime.getTimelineByID(id);
        timeline_rpt_delete.DataBind();
    }
    private void _panelControl(Panel pnl)
    {
        timeline_pnl_all.Visible = false;
        timeline_pnl_delete.Visible = false;
        timeline_pnl_update.Visible = false;
        pnl.Visible = true;
    }

    private void _subRebind()
    {
        timeline_txt_textI.Text = string.Empty;
        timeline_txt_imageI.Text = string.Empty;
        timeline_txt_dateI.Text = string.Empty;
        timeline_rpt_all.DataSource = objTime.getTimeline();
        timeline_rpt_all.DataBind();
        _panelControl(timeline_pnl_all);
    }
    private void _strMessage(bool flag, string str)
    {
        if (flag)
            timeline_lbl_output.Text = "News" + str + "was successful";
        else
            timeline_lbl_output.Text = "Sorry, unable to" + str + "News";

    }
    
}

