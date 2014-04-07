using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class s_checker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _subRebind();
        }
    }

    protected void subShowInsert(object sender, EventArgs e)
    {
        pnl_edit.Visible = false;
        pnl_insert.Visible = true;
        btn_show_insert.Enabled = false;
        btn_show_edit.Enabled = true;
    }

    protected void subShowEdit(object sender, EventArgs e)
    {
        pnl_insert.Visible = false;
        pnl_edit.Visible = true;
        btn_show_edit.Enabled = false;
        btn_show_insert.Enabled = true;
        lv_all.DataSource = objLinq.getQuizByID(int.Parse(ddl_edit.SelectedValue.ToString()));
        lv_all.DataBind();
    }

    quizClass objLinq = new quizClass();

    // Resets the values of the insert input fields and updates the database fields.
    private void _subRebind()
    {
        txt_nameI.Text = string.Empty;
        //txt_descI.Text = string.Empty;
        //txt_priceI.Text = string.Empty;

        ddl_edit.DataSource = objLinq.getQuiz();
        ddl_edit.DataTextField = "Questions";
        ddl_edit.DataValueField = "Id";
        ddl_edit.DataBind();

        lv_all.DataSource = objLinq.getQuizByID(int.Parse(ddl_edit.SelectedValue.ToString()));
        lv_all.DataBind();
    }

    // Inserts data into the database.
    protected void subAdmin(object sender, CommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "Insert":
                _strMessage(objLinq.commitInsert(txt_nameI.Text), "insert");
                _subRebind();
                break;
            case "Cancel":
                _subRebind();
                break;
        }
    }

    // Excecutes and then checks if the insert/update/delete was sucessful, and sends a response to the user.
    private void _strMessage(bool flag, string str)
    {
        if (flag)
            lbl_message.Text = "Question " + str + " was successful";
        else
            lbl_message.Text = "Sorry, unable to " + str + " Question";
    }

    // This function is triggered when the user clicks anything in the ListView (Update, Delete, Cancel)
    protected void subUpDel(object sender, ListViewCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "Update_This":
                TextBox txtName = (TextBox)e.Item.FindControl("txt_nameE");
                
                HiddenField hdfID = (HiddenField)e.Item.FindControl("hdf_idE");
                int proID = int.Parse(hdfID.Value.ToString());
                _strMessage(objLinq.commitUpdate(proID, txtName.Text), "update");
                _subRebind();
                break;
            case "Delete_This":
                int _id = int.Parse(((HiddenField)e.Item.FindControl("hdf_idE")).Value);
                _strMessage(objLinq.commitDelete(_id), "delete");
                _subRebind();
                break;
            case "Cancel_This":
                _subRebind();
                break;
        }
    }


    protected void subChangeEdited(object sender, EventArgs e)
    {
        lv_all.DataSource = objLinq.getQuizByID(int.Parse(ddl_edit.SelectedValue.ToString()));
        lv_all.DataBind();
    }

    
}