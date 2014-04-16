using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class jobClass
{
    public IQueryable<job> getJobs()
    {
        jobsDataContext objJobDC = new jobsDataContext();
        var allJobs = objJobDC.jobs.Select(x => x);
        return allJobs;
    }

    public IQueryable<job> getJobByID(int _id)
    {
        jobsDataContext objJobDC = new jobsDataContext();
        var allJobs = objJobDC.jobs.Where(x => x.Id == _id).Select(x => x);
        return allJobs;

    }
    public bool commitInsert(string _title, string _desc, DateTime _date)
    {
        jobsDataContext objJobDC = new jobsDataContext();
        using (objJobDC)
        {
            job objNewJob = new job();
            objNewJob.title = _title;
            objNewJob.description = _desc;
            objNewJob.last_date_apply = _date;

            objJobDC.jobs.InsertOnSubmit(objNewJob);
            objJobDC.SubmitChanges();
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
