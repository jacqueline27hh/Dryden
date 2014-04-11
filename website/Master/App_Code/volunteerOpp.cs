using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for volunteer
/// </summary>
public class volunteerOpp
{
    public IQueryable<volunteer> getVolunteers()
    {
        volunteerclassDataContext objVolunteer=new volunteerclassDataContext();
        var allvolunteers = objVolunteer.volunteers.Select(x=>x);
        return allvolunteers;
    }

    public IQueryable<volunteer> getVolunteerbyId(int _id)
    {
        volunteerclassDataContext objVolunteer = new volunteerclassDataContext();
        var allvolunteers = objVolunteer.volunteers.Where(x => x.Id == _id).Select(x => x);
        return allvolunteers;
    }

    public bool commitInsert(string _fname, string _lname, int _age, string _gender, string _school_name, string _volunteertype, string _email, char _contact)
    {
        volunteerclassDataContext objVolunteer = new volunteerclassDataContext();
        using (objVolunteer)
        {
            volunteer objnewVolunteer = new volunteer();
            objnewVolunteer.firstname = _fname;
            objnewVolunteer.lastname = _lname;
            objnewVolunteer.age = _age;
            objnewVolunteer.gender = _gender;
            objnewVolunteer.school_name = _school_name;
            objnewVolunteer.volunteer_type = _volunteertype;
            objnewVolunteer.email = _email;
            objnewVolunteer.phone = _contact;
            objVolunteer.volunteers.InsertOnSubmit(objnewVolunteer);
            objVolunteer.SubmitChanges();
            return true;

        }
    }

    public string commitUpdate(int vol_Id, string firstname, string lastname, string email)
    {
        volunteerclassDataContext objVolunteer = new volunteerclassDataContext();
        using (objVolunteer)
        {
            var objupvol = objVolunteer.volunteers.Single(x => x.Id == 1);
            objupvol.firstname = firstname;
            objupvol.lastname = lastname;
            objupvol.email = email;
            objVolunteer.SubmitChanges();
            return "Your update was successful";
        }
    }
}