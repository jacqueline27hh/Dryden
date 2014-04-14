using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class donationClass
{
    public IQueryable<donation> getDonation()
    {

        donationDataContext objDonateDC = new donationDataContext();
        var allDonations = objDonateDC.donations.Select(x => x);
        return allDonations;
    }

    public IQueryable<donation> getDonationByID(int _id)
    {
        donationDataContext objDonateDC = new donationDataContext();
        var allDonations = objDonateDC.donations.Where(x => x.Id == _id).Select(x => x);
        return allDonations;

    }
    public bool commitInsert(string _firstname, string _lastname, string _email, string _message)
    {
        donationDataContext objDonateDC = new donationDataContext();
        using (objDonateDC)
        {
            donation objDonate = new donation();
            objDonate.firstname = _firstname;
            objDonate.lastname = _lastname;
            objDonate.email = _email;
            objDonate.message = _message;

            objDonateDC.donations.InsertOnSubmit(objDonate);
            objDonateDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _firstname, string _lastname, string _email, string _message)
    {
        donationDataContext objDonateDC = new donationDataContext();
        using (objDonateDC)
        {
            var objUpDonate = objDonateDC.donations.Single(x => x.Id == _id);
            objUpDonate.firstname = _firstname;
            objUpDonate.lastname = _lastname;
            objUpDonate.email = _email;
            objUpDonate.message = _message;


            objDonateDC.SubmitChanges();
            return true;

        }
    }

    public bool commitDelete(int _id)
    {
        donationDataContext objDonateDC = new donationDataContext();
        using (objDonateDC)
        {
            var objDelDonate = objDonateDC.donations.Single(x => x.Id == _id);
            objDonateDC.donations.DeleteOnSubmit(objDelDonate);
            objDonateDC.SubmitChanges();
            return true;

        }
    }
}