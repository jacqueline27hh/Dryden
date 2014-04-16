using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for searchClass
/// </summary>
public class searchClass
{
    public string updateSearch(string fname, string lname, string department, string phone, string email, int person_id)
    {
        searchClassDataContext objSearchDC = new searchClassDataContext(); 
        using (objSearchDC)
        {
            var objSearchInstance = objSearchDC.search_APIs.Single(x => x.Id == person_id);
            objSearchInstance.fname = fname; 
            objSearchInstance.lname = lname;
            objSearchInstance.department = department;
            objSearchInstance.phone = phone; 
            objSearchInstance.email = email;
            objSearchDC.SubmitChanges(); 
            return "Your update was successful";
        }
    }

    public string deleteSearch(int person_id)
    {
        searchClassDataContext objSearchDC = new searchClassDataContext();
        using (objSearchDC)
        {
            var objSearchDel = objSearchDC.search_APIs.Single(x => x.Id == person_id);
            objSearchDC.search_APIs.DeleteOnSubmit(objSearchDel);
            objSearchDC.SubmitChanges();
            return "Your delete was successful";
        }
    }

    public string insertSearch(string fname, string lname, string department, string phone, string email)
    {
        searchClassDataContext objSearchDC = new searchClassDataContext();
        using (objSearchDC)
        {
            search_API objSearchInsert = new search_API(); 
            objSearchInsert.fname = fname;
            objSearchInsert.lname = lname;
            objSearchInsert.department = department;
            objSearchInsert.phone = phone;
            objSearchInsert.email = email;

            objSearchDC.search_APIs.InsertOnSubmit(objSearchInsert);
            objSearchDC.SubmitChanges();
            return "Your insert was successful"; 

        }
    }
}