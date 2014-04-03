using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Dashoboard_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        appointmentClass objAppointment = new appointmentClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                appointmentsDataContext dataContext =
                    new appointmentsDataContext();

                var query = from appointment in dataContext.Appointments
                            select appointment;

                rpt_all.DataSource = query;
                rpt_all.DataBind();
            }
        }

    }
}