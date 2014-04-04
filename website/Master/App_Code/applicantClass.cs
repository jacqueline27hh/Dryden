using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class applicantClass
{
    public IQueryable<applicant> getApplicants()
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        var allApplicants = objApplicantDC.applicants.Select(x => x);
        return allApplicants;
    }

    public IQueryable<applicant> getApplicantByID(int _id)
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        var allApplicants = objApplicantDC.applicants.Where(x => x.Id == _id).Select(x => x);
        return allApplicants;

    }
    public bool commitInsert(string _fname, string _lname, string _email, int _phone)
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        using (objApplicantDC)
        {
            applicant objNewApplicant = new applicant();
            objNewApplicant.firstname = _fname;
            objNewApplicant.lastname = _lname;
            objNewApplicant.email = _email;
            objNewApplicant.phone = _phone;

            objApplicantDC.applicants.InsertOnSubmit(objNewApplicant);
            objApplicantDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _fname, string _lname, string _email, int _phone)
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        using (objApplicantDC)
        {
            var objUpApplicant = objApplicantDC.applicants.Single(x => x.Id == _id);
            objUpApplicant.firstname = _fname;
            objUpApplicant.lastname = _lname;
            objUpApplicant.email = _email;
            objUpApplicant.phone = _phone;

            objApplicantDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        using (objApplicantDC)
        {
            var objDelApplicant = objApplicantDC.applicants.Single(x => x.Id == _id);
            objApplicantDC.applicants.DeleteOnSubmit(objDelApplicant);
            objApplicantDC.SubmitChanges();
            return true;
        }
    }
}
