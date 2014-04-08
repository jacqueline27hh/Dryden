using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class doctorClass
{
    public IQueryable<doctor> getDoctors()
    {
        doctorsDataContext objDoctorDC = new doctorsDataContext();
        var allDoctors = objDoctorDC.doctors.Select(x => x);
        return allDoctors;
    }

    public IQueryable<doctor> getDoctorByID(int _id)
    {
        doctorsDataContext objDoctorDC = new doctorsDataContext();
        var allDoctors = objDoctorDC.doctors.Where(x => x.Id == _id).Select(x => x);
        return allDoctors;

    }
    public bool commitInsert(string _fname, string _lname, string _uname, string _pass, int _phone, string _email)
    {
        doctorsDataContext objDoctorDC = new doctorsDataContext();
        using (objDoctorDC)
        {
            doctor objNewDoctor = new doctor();
            objNewDoctor.firstname = _fname;
            objNewDoctor.lastname = _lname;
            objNewDoctor.username = _uname;
            objNewDoctor.passwd = _pass;
            objNewDoctor.phone = _phone;
            objNewDoctor.email = _email;

            objDoctorDC.doctors.InsertOnSubmit(objNewDoctor);
            objDoctorDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _fname, string _lname, string _uname, string _pass, int _phone, string _email)
    {
        doctorsDataContext objDoctorDC = new doctorsDataContext();
        using (objDoctorDC)
        {
            var objUpDoctor = objDoctorDC.doctors.Single(x => x.Id == _id);
            objUpDoctor.firstname = _fname;
            objUpDoctor.lastname = _lname;
            objUpDoctor.username = _uname;
            objUpDoctor.passwd = _pass;
            objUpDoctor.phone = _phone;
            objUpDoctor.email = _email;

            objDoctorDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        doctorsDataContext objDoctorDC = new doctorsDataContext();
        using (objDoctorDC)
        {
            var objDelDoctor = objDoctorDC.doctors.Single(x => x.Id == _id);
            objDoctorDC.doctors.DeleteOnSubmit(objDelDoctor);
            objDoctorDC.SubmitChanges();
            return true;
        }
    }
}