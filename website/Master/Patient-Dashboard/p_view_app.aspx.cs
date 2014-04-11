using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_Dashboard_Default : System.Web.UI.Page
{
    appointmentClass objAppointment = new appointmentClass();
    doctorClass objDoctor = new doctorClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
            //doctorsDataContext objDoctorDC = new doctorsDataContext();

            //var query = from a in Appointments
            //            join d in doctors
            //            on a.doctor_name equals d.Id
            //            select new { AppointmentTitle = a.appointment_title, Datetime = a.date_time, Doctor = d.lastname };

            //appointmentsDataContext dataContext1 =
            //    new appointmentsDataContext();
            //doctorsDataContext dataContext2 =
            //   new doctorsDataContext();

            //var query = from a in appointments
            //            join d in doctors
            //            on a.doctor_name equals d.Id
            //            select new { AppointmentTitle = a.appointment_title, Datetime = a.date_time, Doctor = d.lastname };

            //var query = from doctor select Id join Appointment on doctor.Id = Appointment.doctor_name;

            //var query = from a in Appointment
            //            join d in doctor on a.doctor_name equals d.Id
            //            select new { a.doctor_name, d.Id };

            //var query = from Appointment in dataContext1.Appointments
            //            join doctor in dataContext2.doctors on Appointment.doctor_name equals doctor.Id select;

            //var query = from Appointment in Appointments
            //    join doctor in doctors on doctor.Id equals Appointment.doctor_name;

            //DBData db = new DBData();
            //var query = from a in dataContext1.Appointments
            //            join d in dataContext2.doctors
            //                 on a.doctor_name equals d.Id;

            //var query = from Appointment in dataContext1.Appointments select Appointment inner join from doctor in dataContext2.doctors select doctor;

            //var query = from Appointment in dataContext1.Appointments
            //            select Appointment;

            //doctorClass objDoctor = new doctorClass();
            //doctorsDataContext dataContext2 =
            //   new doctorsDataContext();

            //var query2 = from doctor in dataContext2.doctors
            //            select doctor;

            appointmentsDataContext dataContext =
                    new appointmentsDataContext();
            var query = from Appointment in dataContext.Appointments
                        select Appointment;

            rpt_all.DataSource = query;
            rpt_all.DataBind();
        }
    }
}