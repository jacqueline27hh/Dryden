using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class patientClass
{
    public IQueryable<patient> getPaitnets()
    {
        patientsDataContext objPatientDC = new patientsDataContext();
        var allPatients = objPatientDC.patients.Select(x => x);
        return allPatients;
    }

    public IQueryable<patient> getPatientByID(int _id)
    {
        patientsDataContext objPatientDC = new patientsDataContext();
        var allPatients = objPatientDC.patients.Where(x => x.Id == _id).Select(x => x);
        return allPatients;

    }
    public bool commitInsert(string _fname, string _lname, string _uname, string _pass, int _phone, string _email)
    {
        patientsDataContext objPatientDC = new patientsDataContext();
        using (objPatientDC)
        {
            patient objNewPatient = new patient();
            objNewPatient.firstname = _fname;
            objNewPatient.lastname = _lname;
            objNewPatient.username = _uname;
            objNewPatient.passwd = _pass;
            objNewPatient.phone = _phone;
            objNewPatient.email = _email;

            objPatientDC.patients.InsertOnSubmit(objNewPatient);
            objPatientDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _fname, string _lname, string _uname, string _pass, int _phone, string _email)
    {
        patientsDataContext objPatientDC = new patientsDataContext();
        using (objPatientDC)
        {
            var objUpPatient = objPatientDC.patients.Single(x => x.Id == _id);
            objUpPatient.firstname = _fname;
            objUpPatient.lastname = _lname;
            objUpPatient.username = _uname;
            objUpPatient.passwd = _pass;
            objUpPatient.phone = _phone;
            objUpPatient.email = _email;
            objPatientDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        patientsDataContext objPatientDC = new patientsDataContext();
        using (objPatientDC)
        {
            var objDelPatient = objPatientDC.patients.Single(x => x.Id == _id);
            objPatientDC.patients.DeleteOnSubmit(objDelPatient);
            objPatientDC.SubmitChanges();
            return true;
        }
    }
}
