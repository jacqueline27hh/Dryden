using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class mailingListClass
{
    public IQueryable<Mailing_list> getMailing_list()
    {
        mailingListDataContext objmailDC = new mailingListDataContext();
        var allmails = objmailDC.Mailing_lists.Select(x => x);
        return allmails;

    }

    public IQueryable<Mailing_list> getMailing_listByID(int _id)
    {
        mailingListDataContext objmailDC = new mailingListDataContext();
        var allmails = objmailDC.Mailing_lists.Where(x => x.Id == _id).Select(x => x);
        return allmails;
    }

    public bool commitInsert(string _fname, string _lname, string _email)
    {
        mailingListDataContext objmailDC = new mailingListDataContext();
        using (objmailDC)
        {
            Mailing_list objNewMail = new Mailing_list();
            objNewMail.firstname = _fname;
            objNewMail.lastname = _lname;
            objNewMail.email = _email;

            objmailDC.Mailing_lists.InsertOnSubmit(objNewMail);
            objmailDC.SubmitChanges();
            return true;

        }


    }
    public bool commitUpdate(int _id, string _fname, string _lname, string _email)
    {
        mailingListDataContext objmailDC = new mailingListDataContext();
        using (objmailDC)
        {
            var objUpMail = objmailDC.Mailing_lists.Single(x => x.Id == _id);
            objUpMail.firstname = _fname;
            objUpMail.lastname = _lname;
            objUpMail.email = _email;
            objmailDC.SubmitChanges();
            return true;
        }
    }
    public bool commitDelete(int _id)
    {
        mailingListDataContext objmailDC = new mailingListDataContext();
        using (objmailDC)
        {
            var objDelMail = objmailDC.Mailing_lists.Single(x => x.Id == _id);
            objmailDC.Mailing_lists.DeleteOnSubmit(objDelMail);
            objmailDC.SubmitChanges();
            return true;
        }
    }
}
