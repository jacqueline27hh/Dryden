using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class appointmentClass
{
    public IQueryable<Appointment> getAppointments()
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        var allAppointments = objAppointmentDC.Appointments.Select(x => x);
        return allAppointments;
    }

    public IQueryable<Appointment> getAppointmentByID(int _id)
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        var allAppointments = objAppointmentDC.Appointments.Where(x => x.Id == _id).Select(x => x);
        return allAppointments;

    }
    public bool commitInsert(string _title, string _doc, DateTime _date)
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        using (objAppointmentDC)
        {
            Appointment objNewAppointment = new Appointment();
            objNewAppointment.appointment_title = _title;
          //  objNewAppointment.doctor_name = _doc;
          //  objNewAppointment.date - time = _date;

            objAppointmentDC.Appointments.InsertOnSubmit(objNewAppointment);
            objAppointmentDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _title, string _doc, DateTime _date)
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        using (objAppointmentDC)
        {
            var objUpAppointment = objAppointmentDC.Appointments.Single(x => x.Id == _id);
            objUpAppointment.appointment_title = _title;
          //  objUpAppointment.doctor_name = _doc;
          //  objUpAppointment.date - time = _date;

            objAppointmentDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        using (objAppointmentDC)
        {
            var objDelAppointment = objAppointmentDC.Appointments.Single(x => x.Id == _id);
            objAppointmentDC.Appointments.DeleteOnSubmit(objDelAppointment);
            objAppointmentDC.SubmitChanges();
            return true;
        }
    }
}
