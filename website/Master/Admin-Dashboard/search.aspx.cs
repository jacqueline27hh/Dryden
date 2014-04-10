using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_search : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            subRebind(); 
        }
    }

    public void subCommand(object sender, RepeaterCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "sub_update":
                try
                {
                    searchClass searchInstance = new searchClass();
                    TextBox txtfname = (TextBox)e.Item.FindControl("txt_fname");
                    TextBox txtlname = (TextBox)e.Item.FindControl("txt_lname");
                    TextBox txtdepartment = (TextBox)e.Item.FindControl("txt_department");
                    TextBox txtphone = (TextBox)e.Item.FindControl("txt_phone");
                    TextBox txtemail = (TextBox)e.Item.FindControl("txt_email");
                    lbl_results.Text = searchInstance.updateSearch(txtfname.Text.ToString(), txtlname.Text.ToString(),
                        txtdepartment.Text.ToString(), txtphone.Text.ToString(), txtemail.Text.ToString(), Int32.Parse(e.CommandArgument.ToString()));
                    subRebind(); 
                }
                catch (Exception err)
                {
                    lbl_results.Text = "We're sorry but there was the following error while updating: " + err.Message.ToString();
                }
                break; 
            case "sub_delete":
                try
                {
                    searchClass searchInstanceDel = new searchClass();
                    lbl_results.Text = searchInstanceDel.deleteSearch(Int32.Parse(e.CommandArgument.ToString()));
                    subRebind();
                }
                catch (Exception err)
                {
                    lbl_results.Text = "We're sorry but there was the following error while deleting: " + err.Message.ToString();
                }
                break;
            case "sub_insert":
                try
                {
                    searchClass searchInstanceInsert = new searchClass();
                    TextBox txtfnameI = (TextBox)e.Item.FindControl("txt_fnameI");
                    TextBox txtlnameI = (TextBox)e.Item.FindControl("txt_lnameI");
                    TextBox txtdepartmentI = (TextBox)e.Item.FindControl("txt_departmentI");
                    TextBox txtphoneI = (TextBox)e.Item.FindControl("txt_phoneI");
                    TextBox txtemailI = (TextBox)e.Item.FindControl("txt_emailI");
                    lbl_results.Text = searchInstanceInsert.insertSearch(txtfnameI.Text.ToString(), txtlnameI.Text.ToString(), txtdepartmentI.Text.ToString(),
                        txtphoneI.Text.ToString(), txtemailI.Text.ToString());
                    subRebind(); 
                }
                catch (Exception err)
                {
                    lbl_results.Text = "We're sorry but there was the following error while inserting: " + err.Message.ToString(); 
                }
                break; 
        }
    }

    protected void subRebind()
    {
        rpt_search.DataSourceID = "sds_search";
        rpt_search.DataBind(); 
    }
}