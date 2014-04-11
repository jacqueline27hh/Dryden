using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class volunteer_opp : System.Web.UI.Page
{
    volunteerOpp objvolunteer = new volunteerOpp();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _subRebind();
        }
    }
         private void _subRebind()
    {
        volunteerOpp objVol = new volunteerOpp();
        lst_all.DataSource = objVol.getVolunteers();
        lst_all.DataBind();
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
    
     protected void subupdel(object sender, ListViewCommandEventArgs e)
     {
         switch (e.CommandName)
         {
             case "Update":
                 TextBox txtfname = (TextBox)e.Item.FindControl("txtfnameU");
                 TextBox txtlname = (TextBox)e.Item.FindControl("txtlnameU");
                 TextBox txtemail = (TextBox)e.Item.FindControl("txtemailU");
                 HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_id");
                 
                  int volId = int.Parse(hdfID.Value.ToString());
                lblmsg.Text=objvolunteer.commitUpdate(volId, txtfname.Text.ToString(), txtlname.Text.ToString(),txtemail.Text.ToString());
                _subRebind();
                break;
             case "Delete":
                int vol_Id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idD")).Value);
                _subRebind();
                break;
             case "Cancel":
                _subRebind();
                break;
                 

         }
    }
     private void _showUpdate(int id)
     {
         _panelControl(update_pnl);
         volunteerOpp _volOpp = new volunteerOpp();
         lst_update.DataSource = _volOpp.getVolunteerbyId(id);
         lst_update.DataBind();
         
     }
     private void _showDelete(int id)
     {
         _panelControl(pnl_delete);
         lst_delete.DataSource = objvolunteer.getVolunteerbyId(id);
         lst_delete.DataBind();

     }
     private void _panelControl(Panel pnl)
     {
         pnl_all.Visible = false;
         pnl_delete.Visible = false;
         update_pnl.Visible = false;
         pnl.Visible = true;

     }
    
}