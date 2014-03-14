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

    public bool commitUpdate(int _id, string _title, string _desc, DateTime _date)
    {
        jobsDataContext objJobDC = new jobsDataContext();
        using (objJobDC)
        {
            var objUpJob = objJobDC.jobs.Single(x => x.Id == _id);
            objUpJob.title = _title;
            objUpJob.description = _desc;
            objUpJob.last_date_apply = _date;

            objJobDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        jobsDataContext objJobDC = new jobsDataContext();
        using (objJobDC)
        {
            var objDelJob = objJobDC.jobs.Single(x => x.Id == _id);
            objJobDC.jobs.DeleteOnSubmit(objDelJob);
            objJobDC.SubmitChanges();
            return true;
        }
    }
}
