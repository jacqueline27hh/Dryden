using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for ERwaitTimeClass
/// </summary>
public class ERwaitTimeClass
{
    public IQueryable<ER_waittime>getwaitTimes()
    {
        ERwaitClassDataContext objERDC = new ERwaitClassDataContext();
        var allTimes = objERDC.ER_waittimes.Select(x => x);
        return allTimes;
    }

    public IQueryable<ER_waittime>getTimeByID(int _id)
    {
        ERwaitClassDataContext objERDC = new ERwaitClassDataContext();
        var allTimes = objERDC.ER_waittimes.Where(x => x.Id == _id).Select(x => x);
        return allTimes;

    }
    public bool commitInsert(DateTime _waittime,DateTime _checkedin)
    {
        ERwaitClassDataContext objERDC = new ERwaitClassDataContext();
        using (objERDC)
        {
            ER_waittime objnewWaittime = new ER_waittime();
            objnewWaittime.wait_time = _waittime.TimeOfDay;
            objnewWaittime.checked_in = _checkedin;
         
           

            objERDC.ER_waittimes.InsertOnSubmit(objnewWaittime);
            objERDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, DateTime _waititme, DateTime _checkedin)
    {
        ERwaitClassDataContext objERDC = new ERwaitClassDataContext();
        using (objERDC)
        {
            var objUpERtime = objERDC.ER_waittimes.Single(x => x.Id == _id);
            objUpERtime.wait_time = _waititme.TimeOfDay;
            objUpERtime.checked_in = _checkedin;
         

            objERDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        ERwaitClassDataContext objERDC = new ERwaitClassDataContext();
        using (objERDC)
        {
            var objDelER=  objERDC.ER_waittimes.Single(x => x.Id == _id);
            objERDC.ER_waittimes.DeleteOnSubmit(objDelER);
            objERDC.SubmitChanges();
            return true;
        }
    }

    //This function gets the most recent alert for public side

    public IQueryable<ER_waittime> getlatestWaittimes()
    {
        ERwaitClassDataContext objERDC = new ERwaitClassDataContext();
        var latesttimes = objERDC.ER_waittimes.OrderByDescending(x => x.checked_in).Take(1);
        return latesttimes;
    }
}