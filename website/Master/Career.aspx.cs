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

            rpt_all.DataSource = query;
            rpt_all.DataBind();
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

    protected void subApply(object sender, CommandEventArgs e)
    {
        _strMessage(objApplicant.commitInsert(txt_fnameI.Text, txt_lnameI.Text, txt_emailI.Text, txt_phoneI.Text, "insert");
        _subRebind();
    }

    protected void _subRebind()
    {
        txt_fnameI.Text = string.Empty;
        txt_lnameI.Text = string.Empty;
        txt_emailI.Text = string.Empty;
        txt_phoneI.Text = string.Empty;
        rpt_all.DataSource = objApplicant.getApplicants();
        rpt_all.DataBind();
    }

    private void _strMessage(bool flag, string struct)
    {
        if (flag)
            lbl_msg.Text = "Your application was submitted successfully!";
        else
            lbl_msg.Text = "Something went wrong. Please try again.";
    }

    protected void subView(object sender, EventArgs e)
    {
        Response.Redirect "Career.aspx:view2";
    }

    volunteerOpp objvol = new volunteerOpp();
    protected void subVolunteer(object sender, CommandEventArgs e)
    {
       
      
    }
     
}