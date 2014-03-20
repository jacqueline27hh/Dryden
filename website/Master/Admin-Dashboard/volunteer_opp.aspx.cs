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
    
     protected void subupDel(object sender, ListViewCommandEventArgs e)
     {
         switch (e.CommandName)
         {
             case "Update":
                 TextBox txtfname = (TextBox)e.Item.FindControl("txtfnameU");
                 TextBox txtlname = (TextBox)e.Item.FindControl("txtlnameU");
                 TextBox txtemail = (TextBox)e.Item.FindControl("txtemailU");
                 HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_id");
                 
                  int Id = int.Parse(hdf_id.Value.ToString());
                _strMessage(objVol.commitUpdate(Id, txtfname.Text, txtlname.Text,txtemail.Text), "update");
                _subRebind();
                break;

         }
    }
    
}