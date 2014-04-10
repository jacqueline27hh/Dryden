using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Dashboard_Default : System.Web.UI.Page
{
    appointmentClass objAppointment = new appointmentClass();
    //doctorClass objDoctor = new doctorClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            appointmentsDataContext dataContext =
                new appointmentsDataContext();

            var query = from Appointment in dataContext.Appointments
                        select Appointment;

            //doctorClass objDoctor = new doctorClass();
            //doctorsDataContext dataContext2 =
            //   new doctorsDataContext();

            //var query2 = from doctor in dataContext2.doctors
            //            select doctor;

            grd_all.DataSource = query;
            grd_all.DataBind();
        }
    }
}