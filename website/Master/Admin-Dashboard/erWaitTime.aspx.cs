using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class er_wt : System.Web.UI.Page
{
    ERwaitTimeClass objwait = new ERwaitTimeClass();
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
                _strMessage(objwait.commitInsert(DateTime.Now,DateTime.Now), "insert");
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
                TextBox txtwaititme = (TextBox)e.Item.FindControl("txt_waittimeU");
                TextBox txtcheckedin = (TextBox)e.Item.FindControl("txt_checkinU");
                HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_idU");

                int wait_ID = int.Parse(hdfID.Value.ToString());
                //_strMessage(objwait.commitUpdate(wait_ID,txtwaititme.Text.ToString(), txtcheckedin.Text.ToString()), "update");
                _subRebind();
                break;
            case "Delete":
                int _id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idD")).Value);
                _strMessage(objwait.commitDelete(_id), "delete");
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
        ERwaitTimeClass _wait = new ERwaitTimeClass();
        rpt_update.DataSource = _wait.getTimeByID(id);
        rpt_update.DataBind();
    }
    private void _showDelete(int id)
    {
        _panelControl(pnl_delete);
        rpt_delete.DataSource = objwait.getTimeByID(id);
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
        txtwaittimeI.Text = string.Empty;
        txtcheckTimeI.Text = string.Empty;
        rpt_all.DataSource = objwait.getwaitTimes();
        rpt_all.DataBind();
        _panelControl(pnl_all);
    }
    private void _strMessage(bool flag, string str)
    {
        if (flag)
           lbl_output.Text = "Waiting Time" + str + "was successful";
        else
            lbl_output.Text = "Sorry,Error occured..Try again";

    }
    
}