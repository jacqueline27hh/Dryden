﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Dashoboard_Default : System.Web.UI.Page
{
    appointmentClass objJob = new appointmentClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            appointmentsDataContext dataContext =
                new appointmentsDataContext();

            var query = from Appointment in dataContext.Appointments
                        select Appointment;

            rpt_all.DataSource = query;
            rpt_all.DataBind();
        }
    }
}