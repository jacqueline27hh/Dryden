﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; // this is necessary to call membership/ user id

public partial class Patient_Dashboard_Default : System.Web.UI.Page
{
    appointmentClass objAppointment = new appointmentClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            appointmentsDataContext dataContext =
                    new appointmentsDataContext();

            Guid _id = Guid.Parse(Membership.GetUser().ProviderUserKey.ToString());

            rpt_all.DataSource = objAppointment.getPatientById(_id);
            rpt_all.DataBind();
        }
    }
}