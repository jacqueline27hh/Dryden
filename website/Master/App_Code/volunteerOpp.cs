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

    //public string commitInsert(string firstname, string lastname, int age, string gender, string school_name, string volunteer_type, string email, string phone, string available_days)
    //{
    //    volunteerclassDataContext objVolunteer = new volunteerclassDataContext();
    //    {
    //        //volunteer objnewVolunteer = new volunteer();
    //        //objnewVolunteer.firstname = _firstname;
    //        //objnewVolunteer.lastname = _lastname;
    //        //objnewVolunteer.age = _age;
    //        //objnewVolunteer.gender = _gender;
    //        //objnewVolunteer.school_name = _school_name;
    //        //objnewVolunteer.volunteer_type = _volunteer_type;
    //        //objnewVolunteer.email = _email;
    //        //objnewVolunteer.phone = _phone;
    //        //objnewVolunteer.available_days = _available_days;
    //        //objVolunteer.volunteers.InsertOnSubmit(objnewVolunteer);
    //        //objVolunteer.SubmitChanges();
    //        //return "Application submitted";

    //    }
    //}

    public string commitUpdate(int id, string firstname, string lastname, string email)
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