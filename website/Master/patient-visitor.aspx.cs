
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    surveyClass objSurvey = new surveyClass();
    ecardClass objEcard = new ecardClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!Page.IsPostBack)
        //{
         //   _subRebind();
        //}
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
    //protected void subSubmit(object sender, EventArgs e)
    //{
    //    _strMessage(objSurvey.commitInsert(txtFname.Text, txtLname.Text, txtEmail.Text, txtReview.Text, txtMsg.Text), "insert");
    //    _subRebind();
    //}
    protected void subAddReview(object sender, CommandEventArgs e)
    {
        surveyDataContext objsurveyDC = new surveyDataContext();
        patient_survey objSurvey = new patient_survey();
        objSurvey.firstname = txtFname.Text;
        objSurvey.lastname = txtLname.Text;
        objSurvey.email = txtEmail.Text;
        objSurvey.reviewof = txtReview.Text;
        objSurvey.message = txtMsg.Text;

        objsurveyDC.patient_surveys.InsertOnSubmit(objSurvey);
        objsurveyDC.SubmitChanges();
        txtFname.Text = "";
        txtLname.Text = "";
        txtEmail.Text = "";
        txtReview.Text = "";
        txtMsg.Text = "";
        lbl_ty.Text = "Thank you for your review! It has been submitted.";

    }
    //private void _subRebind()
    //{
      // txtFname.Text = string.Empty;
       //txtLname.Text = string.Empty;
      // txtEmail.Text = string.Empty;
       //txtReview.Text = string.Empty;
       //txtMsg.Text = string.Empty;
    //}
    //private void _strMessage(bool flag, string str)
    //{
      //  if (flag)
        //    lbl_message.Text = "Thank you for your review. It has been submitted.";
        //else
          //  lbl_message.Text = "Sorry, unable to submit your review. Please try again";
    //}

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

    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        // Update the background.
        pnlCard.BackImageUrl = ddlBg.SelectedItem.Value;
        // Update the font.
        lblGreeting.Font.Name = ddlFont.SelectedItem.Text;
        // Update font size
        lblGreeting.Font.Size = FontUnit.Point(Int32.Parse(ddlSize.SelectedItem.Text));
        // Set the text.
        lblGreeting.Text = txtGreeting.Text;

    }

    protected void subAddEcard(object sender, CommandEventArgs e)
    {
        ecardDataContext objEcardDC = new ecardDataContext();
        E_card objEcard = new E_card();
        objEcard.name = txtRec.Text;
        objEcard.recipient = txtName.Text;
        objEcard.background = ddlBg.SelectedItem.Value;
        //objEcard.font = ddlFont.SelectedItem.Value;
        //objEcard.size = ddlSize.SelectedItem.Value;
        objEcard.message = txtMsg.Text;

        objEcardDC.E_cards.InsertOnSubmit(objEcard);
        objEcardDC.SubmitChanges();
        txtRec.Text = "";
        txtName.Text = "";
        ddlBg.SelectedItem.Value = "";
        ddlFont.SelectedItem.Value = "";
        ddlSize.SelectedItem.Value = "";
        txtGreeting.Text = "";
        lblTy.Text = "Thank you! The Ecard has been submitted.";

    }
}
    