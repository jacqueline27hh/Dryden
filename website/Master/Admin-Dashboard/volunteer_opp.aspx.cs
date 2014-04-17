using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class volunteer_opp : System.Web.UI.Page
{
    volunteerOppClass objvolunteer = new volunteerOppClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _subRebind();
        }
    }
        //subAdmin to link to update and delete 
         protected void subAdmin(object sender,CommandEventArgs e)
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
         protected void subUP(object sender,ListViewUpdateEventArgs e)
         { 
         }

         protected void subDel(object sender,ListViewDeleteEventArgs e)
         {
         }
         protected void subupCan(object sender,ListViewCancelEventArgs e)
         {
             lst_all.EditIndex = -1;
             lst_all.DataBind();
         }
    
     protected void subupdel(object sender, ListViewCommandEventArgs e)
     {
         switch (e.CommandName)
         {
             case "Update":
                 TextBox txtfname = (TextBox)e.Item.FindControl("txtfnameU");
                 TextBox txtlname = (TextBox)e.Item.FindControl("txtlnameU");
                 DropDownList ddlvolType = (DropDownList)e.Item.FindControl("ddlvoltypeU");
                 TextBox txtemail = (TextBox)e.Item.FindControl("txtemailU");
                 TextBox txtcontact = (TextBox)e.Item.FindControl("txtcontactU");
                 HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_id");
                 
                  int volId = int.Parse(hdfID.Value.ToString());
                  _strMessage(objvolunteer.commitUpdate(volId, txtfname.Text, txtlname.Text, txtemail.Text, txtcontact.Text), "update");
                 
                _subRebind();
                break;
             case "Delete":
                int vol_Id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idD")).Value);
                _strMessage(objvolunteer.commitDelete(vol_Id), "delete");
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
         volunteerOppClass _volOpp = new volunteerOppClass();
         lst_update.DataSource = _volOpp.getVolunteerByID(id);
         lst_update.DataBind();
         
     }
     private void _showDelete(int id)
     {
         _panelControl(pnl_delete);
         lst_delete.DataSource = objvolunteer.getVolunteerByID(id);
         lst_delete.DataBind();

     }
     private void _panelControl(Panel pnl)
     {
         pnl_all.Visible = false;
         pnl_delete.Visible = false;
         update_pnl.Visible = false;
         pnl.Visible = true;

     }
     private void _subRebind()
     {
        // volunteerOppClass objvolDC = new volunteerOppClass();
        
         lst_all.DataSource = objvolunteer.getVolunteers();
         lst_all.DataBind();
         _panelControl(pnl_all);
     }
     private void _strMessage(bool flag, string str)
     {
         if (flag)
             lbl_output.Text = "Volunteer Applicant" + " " + str + " " + "was successful";
         else
             lbl_output.Text = "Sorry, unable to " + str + "Volunteer Applicant";

     }
    
}