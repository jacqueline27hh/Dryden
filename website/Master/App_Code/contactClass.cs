using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for contactClass
/// </summary>
public class contactClass
{
    public IQueryable<direct_contact> getContacts()
    {
        directcontactDataContext objContactDC = new directcontactDataContext();
        var allContacts = objContactDC.direct_contacts.Select(x => x);
        return allContacts;
    }


    public IQueryable<direct_contact> getContactByID(int _id)
    {

        directcontactDataContext objContactDC = new directcontactDataContext();
        var allContacts = objContactDC.direct_contacts.Where(x => x.Id == _id).Select(x => x);
        return allContacts;

    }
    public bool commitInsert(string _fname, string _lname, string _dept, string _email, string _message)
    {
        directcontactDataContext objContactDC = new directcontactDataContext();
        using (objContactDC)
        {
            direct_contact objNewContact = new direct_contact();
            objNewContact.firstname = _fname;
            objNewContact.lastname = _lname;
            objNewContact.department = _dept;
            objNewContact.email = _email;
            objNewContact.message = _message;

            objContactDC.direct_contacts.InsertOnSubmit(objNewContact);
            objContactDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _fname, string _lname, string _email)
    {
        directcontactDataContext objContactDC = new directcontactDataContext();
        using (objContactDC)
        {
            var objupContact = objContactDC.direct_contacts.Single(x => x.Id == _id);
            objupContact.firstname = _fname;
            objupContact.lastname = _lname;
            //objupContact.department = _dept;
            objupContact.email = _email;
            //objupContact.message = _message;

            objContactDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        directcontactDataContext objContactDC = new directcontactDataContext();
        using (objContactDC)
        {
            var objDelContact = objContactDC.direct_contacts.Single(x => x.Id == _id);
            objContactDC.direct_contacts.DeleteOnSubmit(objDelContact);
            objContactDC.SubmitChanges();
            return true;
        }
    }
}