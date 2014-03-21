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
            subRebind();
        }
    }
         protected void subRebind()
    {
        volunteerOpp objVol = new volunteerOpp();
        lst_update.DataSource = objVol.getVolunteers();
        lst_update.DataBind();
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
                subRebind();
                break;
             case "Delete":
                int Id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idD")).Value);
                subRebind();
                break;
             case "Cancel":
                subRebind();
                break;
                 

         }
    }
    
}