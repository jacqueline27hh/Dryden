using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class volunteerOppClass
{
    public IQueryable<volunteer> getVolunteers()
    {
        volunteerclassDataContext objVolunteerDC = new volunteerclassDataContext();
        var allVolunteers = objVolunteerDC.volunteers.Select(x => x);
        return allVolunteers;
    }

    public IQueryable<volunteer> getVolunteerByID(int _id)
    {
        volunteerclassDataContext objVolunteerDC = new volunteerclassDataContext();
        var allVolunteers = objVolunteerDC.volunteers.Where(x => x.vol_Id == _id).Select(x => x);
        return allVolunteers;

    }
    public bool commitInsert(string _fname, string _lname, int _age, string _gender, string _schoolname, string _voltype, string _email, string _phone)
    {
        volunteerclassDataContext objVolunteerDC = new volunteerclassDataContext();
        using (objVolunteerDC)
        {
            volunteer objNewVolunteer = new volunteer();
            objNewVolunteer.firstname = _fname;
            objNewVolunteer.lastname = _lname;
            objNewVolunteer.age = _age;
            objNewVolunteer.gender = _gender;
            objNewVolunteer.school_name = _schoolname;
            objNewVolunteer.volunteer_type = _voltype;
            objNewVolunteer.email = _email;
            objNewVolunteer.phone = _phone;
            //objNewVolunteer.vol_Id = _id;

            objVolunteerDC.volunteers.InsertOnSubmit(objNewVolunteer);
            objVolunteerDC.SubmitChanges();
            return true;
        }
    }

    public string commitUpdate(int _id, string _fname, string _lname, string _voltype, string _email, string _phone)
    {
        volunteerclassDataContext objVolunteerDC = new volunteerclassDataContext();
        using (objVolunteerDC)
        {
            var objUpVolunteer = objVolunteerDC.volunteers.Single(x => x.vol_Id == _id);
            objUpVolunteer.firstname = _fname;
            objUpVolunteer.lastname = _lname;
            //objUpVolunteer.age = _age;
            //objUpVolunteer.gender = _gender;
            //objUpVolunteer.school_name = _schoolname;
            objUpVolunteer.volunteer_type = _voltype;
            objUpVolunteer.email = _email;
            objUpVolunteer.phone = _phone;

            objVolunteerDC.SubmitChanges();
            return "Application Updated";
        }
    }

    public bool commitDelete(int _id)
    {
        volunteerclassDataContext objVolunteerDC = new volunteerclassDataContext();
        using (objVolunteerDC)
        {
            var objDelVolunteer = objVolunteerDC.volunteers.Single(x => x.vol_Id == _id);
            objVolunteerDC.volunteers.DeleteOnSubmit(objDelVolunteer);
            objVolunteerDC.SubmitChanges();
            return true;
        }
    }
}
