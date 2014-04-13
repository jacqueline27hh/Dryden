using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    jobClass objJob = new jobClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            jobsDataContext dataContext =
                new jobsDataContext();

            var query = from job in dataContext.jobs
                        select job;

            rpt_allJobs.DataSource = query;
            rpt_allJobs.DataBind();
            _subRefresh();
        }
        string urlPost = HttpContext.Current.Request.Url.AbsoluteUri;
        string[] indexNum = urlPost.Split('=');
        if (indexNum.Length > 1)
        {
            mv_tabs.ActiveViewIndex = Convert.ToInt32(indexNum[1]);
            career_nav_menu.FindItem(indexNum[1]).Selected = true;
        }
    }

    protected void switchTabs(object sender, EventArgs e)
    {
        mv_tabs.ActiveViewIndex = Convert.ToInt32(career_nav_menu.SelectedValue);
    }

    applicantClass objApplicant = new applicantClass();
    protected void subJobs(object sender, RepeaterCommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "ApplyNow": // This is similar to update commandName
                _showApply(int.Parse(e.CommandArgument.ToString()));
                break;
        }
    }

    protected void subApply(object sender, RepeaterCommandEventArgs e) // similar to subUpDel
    {
        switch (e.CommandName)
        {
            case "ApplyNow": //This is similar to the update command
                applicantsDataContext objApplicantDC = new applicantsDataContext();
                applicant objNewApplicant = new applicant();
                TextBox txtFname = (TextBox)e.Item.FindControl("txt_fnameApp");
                TextBox txtLname = (TextBox)e.Item.FindControl("txt_lnameApp");
                TextBox txtEmail = (TextBox)e.Item.FindControl("txt_emailApp");
                TextBox txtPhone = (TextBox)e.Item.FindControl("txt_phoneApp");
                TextBox txtMsgBox = (TextBox)e.Item.FindControl("txt_msgBox");
                HiddenField hdfJobID = (HiddenField)e.Item.FindControl("hdf_jobID");
                objNewApplicant.firstname = txtFname.Text;
                objNewApplicant.lastname = txtLname.Text;
                objNewApplicant.email = txtEmail.Text;
                //objNewApplicant.phone = int.Parse(txtPhone.Value.ToString());
                objNewApplicant.job_id = int.Parse(hdfJobID.Value.ToString());

                objApplicantDC.applicants.InsertOnSubmit(objNewApplicant);
                objApplicantDC.SubmitChanges();
                txtFname.Text = "";
                txtLname.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtMsgBox.Text = "";
                lbl_confirmApply.Text = "Your applicantion was sent successfully!";
                //_subRefresh();
                break;
            case "Refresh":
                //_subRefresh();
                Response.Redirect("Career.aspx?tabIndex=0");
                break;
        }
    }
    // This is where I am requesting that the application form become visible, carrying the jobID to this form
    private void _showApply(int id)
    {
        _panelControl(pnl_apply);
        jobClass _job = new jobClass();
        rpt_applyNow.DataSource = _job.getJobByID(id);
        rpt_applyNow.DataBind();
    }
    // Here is where a control which panels are visible
    private void _panelControl(Panel pnl)
    {
        pnl_jobs.Visible = false;
        pnl_apply.Visible = false;
        pnl.Visible = true;
    }
    // This is where I reset the form
    private void _subRefresh()
    {
        //TextBox txtFname = (TextBox)FindControl("txt_fnameApp");
        //TextBox txtLname = (TextBox)FindControl("txt_lnameApp");
        //TextBox txtEmail = (TextBox)FindControl("txt_emailApp");
        //TextBox txtFname = (TextBox)e.Item.FindControl("txt_fnameApp");
        //TextBox txtLname = (TextBox)e.Item.FindControl("txt_lnameApp");
        //TextBox txtEmail = (TextBox)e.Item.FindControl("txt_emailApp");
        //txtFname.Text = string.Empty;
        //txtLname.Text = string.Empty;
        //txtEmail.Text = string.Empty;
        //txtFname.Text = "";
        //txtLname.Text = "";
        //txtEmail.Text = "";
        //txtPhone.Text = "";
        //txtMsgBox.Text = "";

        //txt_fnameApp.Text = string.Empty;
        //txt_lnameApp.Text = string.Empty;
        //txt_emailApp.Text = string.Empty;

        //rpt_allJobs.DataSource = objJob.getJobs();
        //rpt_allJobs.DataBind();
        //_panelControl(pnl_jobs);
    }

     // This is where I declare what the confirmation msg will display once the user has completed application
    private void _confirmApply(bool flag, string str)
    {
        //Label lblMsg = (Label)FindControl("lbl_confirmApply");
        //if (flag)
        //    lblMsg.Text = "Your applicantion was sent successfully";
        //else
        //    lblMsg.Text = "Sorry, we were unable to process your applicantion";
    }

//****************************************************************
//            Shalini's Volunteer Feature
//****************************************************************

    volunteer objNewVolunteer = new volunteer();
    protected void subVolunteer(object sender, CommandEventArgs e)
    {

        //_strMessage(objvol.commitInsert(txtfname.Text, txtlname.Text, int.Parse(txtage.Text.ToString()), rdb_gender.SelectedItem.Text, txtschool.Text, ddl_voltype.SelectedItem.Text, txtemail.Text, char.Parse(txtcontact.Text.ToString())), "insert");
        volunteerclassDataContext objVolunteerDC = new volunteerclassDataContext();
        volunteer objNewVolunteer = new volunteer();
        objNewVolunteer.firstname = txtfname.Text;
        objNewVolunteer.lastname = txtlname.Text;
        objNewVolunteer.age = int.Parse(txtage.Text.ToString());
        objNewVolunteer.gender = rdb_gender.Text;
        objNewVolunteer.school_name = txtschool.Text;
        objNewVolunteer.volunteer_type = ddl_voltype.Text;
        objNewVolunteer.email = txtemail.Text;
        objNewVolunteer.phone = txtcontact.Text;
      
        objVolunteerDC.volunteers.InsertOnSubmit(objNewVolunteer);
        objVolunteerDC.SubmitChanges();
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtage.Text = "";
        txtschool.Text = "";
        txtcontact.Text = "";
        ddl_voltype.Text = "";
        rdb_gender.Text = "";
        lbl_msgV.Text = "Your volunteer application was submitted successfully!";
        _subRebind();
    }
    //private void _strMessage(bool flag, string str)
    //{
    //    if (flag)
    //        lbl_msgV.Text = "Application" + str + "submitted";
    //    else
    //        lbl_msgV.Text = "Sorry, unable to " + str + "submit message";

    //}
    protected void subVolCancel(object sender, CommandEventArgs e)
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtage.Text = "";
        txtschool.Text = "";
        txtcontact.Text = "";
        ddl_voltype.Text = "";
        rdb_gender.Text = "";
    }
    private void _subRebind()
    {
        volunteer objNewVolunteer = new volunteer();
    }

    //protected void rpt_all_ItemCommand(object source, RepeaterCommandEventArgs e)
    //{

    //}
}