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

    public List<sp_getUserPatientByIdResult> getPatient(Guid _id)
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        using (objAppointmentDC)
        {
            var patientById = objAppointmentDC.sp_getUserPatientById(_id);
            return patientById.ToList();
        }
    }

    public List<sp_getUserDoctorByIdResult> getDoctor(Guid _id)
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        using (objAppointmentDC)
        {
            var doctorById = objAppointmentDC.sp_getUserDoctorById(_id);
            return doctorById.ToList();
        }
    }

    public bool commitInsert(string _pname, DateTime _date, string _title)
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        using (objAppointmentDC)
        {
            Appointment objNewAppointment = new Appointment();

            //objNewAppointment.patientName = _pname;
            objNewAppointment.date_time = _date;
            objNewAppointment.appointment_title = _title;

            objAppointmentDC.Appointments.InsertOnSubmit(objNewAppointment);
            objAppointmentDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _pname, DateTime _date, string _title)
    {
        appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
        using (objAppointmentDC)
        {
            var objUpAppointment = objAppointmentDC.Appointments.Single(x => x.Id == _id);

            //objUpAppointment.patientName = _pname;
            objUpAppointment.date_time = _date;
            objUpAppointment.appointment_title = _title;

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

    //public List<sp_getUserPatientByIdResult> getPatient(Guid _id)
    //{
    //    appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
    //    using (objAppointmentDC)
    //    {
    //        var patientById = objAppointmentDC.sp_getUserPatientById(_id);
    //        return patientById.ToList();
    //    }
    //}

    //public List<sp_getUserDoctorByIdResult> getDoctor(Guid _id)
    //{
    //    appointmentsDataContext objAppointmentDC = new appointmentsDataContext();
    //    using (objAppointmentDC)
    //    {
    //        var doctorById = objAppointmentDC.sp_getUserDoctorById(_id);
    //        return doctorById.ToList();
    //    }
    //}
}
