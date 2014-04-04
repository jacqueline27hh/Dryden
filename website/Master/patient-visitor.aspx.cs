
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    surveyClass objSurvey = new surveyClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            _subRebind();
        }
        string urlPost = HttpContext.Current.Request.Url.AbsoluteUri;
        string[] indexNum = urlPost.Split('=');
        if (indexNum.Length > 1)
        {
            mv_tabs.ActiveViewIndex = Convert.ToInt32(indexNum[1]);
            pv_nav_menu.FindItem(indexNum[1]).Selected = true;
        }

    }

    protected void switchTabs(object sender, EventArgs e)
    {
        mv_tabs.ActiveViewIndex = Convert.ToInt32(pv_nav_menu.SelectedValue);
    }
    protected void subSubmit(object sender, EventArgs e)
    {
        _strMessage(objSurvey.commitInsert(txtFname.Text, txtLname.Text, txtEmail.Text, txtReview.Text, txtMsg.Text), "insert");
        _subRebind();
    }
    private void _subRebind()
    {
        txtFname.Text = string.Empty;
        txtLname.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtReview.Text = string.Empty;
        txtMsg.Text = string.Empty;
    }
    private void _strMessage(bool flag, string str)
    {
        if (flag)
            lbl_message.Text = "Thank you for your review. It has been submitted.";
        else
            lbl_message.Text = "Sorry, unable to submit your review. Please try again";
    }

    protected void subProcess(object sender, EventArgs e)
    {
        var totalCount = 0; 
        foreach (RepeaterItem item in rpt_qf.Items)
        {
            var rbl_q = (RadioButtonList)item.FindControl("rbl_questions");
            if (rbl_q.SelectedValue.ToString() == "Y")
            {
                totalCount++; 
            }
        }
        if (totalCount >= 7)
        {
            lbl_test2.Text = "Get your ass to the hospital!" + " You had " + totalCount + "yeses";
        }
        else
        {
            lbl_test2.Text = "All good" + "There were this many yeses: " + totalCount; 
        }
    }
}
    