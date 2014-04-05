using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_search : System.Web.UI.Page
{

    public void subCommand(object sender, RepeaterCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "sub_update":
                searchClass searchInstance = new searchClass();
                TextBox txtfname = (TextBox)e.Item.FindControl("txt_fname");
                TextBox txtlname = (TextBox)e.Item.FindControl("txt_lname");
                TextBox txtdepartment = (TextBox)e.Item.FindControl("txt_department");
                TextBox txtphone = (TextBox)e.Item.FindControl("txt_phone");
                TextBox txtemail = (TextBox)e.Item.FindControl("txt_email");
                lbl_results.Text = searchInstance.updateSearch(txtfname.Text.ToString(), txtlname.Text.ToString(),
                    txtdepartment.Text.ToString(), txtphone.Text.ToString(), txtemail.Text.ToString(), Int32.Parse(e.CommandArgument.ToString())); 
                break; 
            case "sub_delete":
                searchClass searchInstanceDel = new searchClass();
                lbl_results.Text = searchInstanceDel.deleteSearch(Int32.Parse(e.CommandArgument.ToString())); 
                break;
            case "sub_insert":
                searchClass searchInstanceInsert = new searchClass();
                TextBox txtfnameI = (TextBox)e.Item.FindControl("txt_fnameI");
                TextBox txtlnameI = (TextBox)e.Item.FindControl("txt_lnameI");
                TextBox txtdepartmentI = (TextBox)e.Item.FindControl("txt_departmentI");
                TextBox txtphoneI = (TextBox)e.Item.FindControl("txt_phoneI");
                TextBox txtemailI = (TextBox)e.Item.FindControl("txt_emailI");
                lbl_results.Text = searchInstanceInsert.insertSearch(txtfnameI.Text.ToString(), txtlnameI.Text.ToString(), txtdepartmentI.Text.ToString(),
                    txtphoneI.Text.ToString(), txtemailI.Text.ToString()); 
                break; 
        }
    }
}