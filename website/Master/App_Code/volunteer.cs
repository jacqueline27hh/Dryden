using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for volunteer
/// </summary>
public class volunteer
{
    public IQueryable<volunteer> getVolunteers()
    {
        volunteerclassDataContext objVolunteer=new volunteerclassDataContext;
        var allvolunteers = objVolunteer.volunteers.Select(x=>x);
        return allvolunteers;
    }

}