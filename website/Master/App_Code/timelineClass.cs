using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class timelineClass
{
    public IQueryable<Timeline> getTimeline()
    {
        timelineDataContext objtimeDC = new timelineDataContext();
        var allTimelines = objtimeDC.Timelines.Select(x => x);
        return allTimelines;
    }

    public IQueryable<Timeline> getTimelineByID(int _id)
    {
        timelineDataContext objtimeDC = new timelineDataContext();
        var allTimelines = objtimeDC.Timelines.Where(x => x.Id == _id).Select(x => x);
        return allTimelines;
    }

    public bool commitInsert(string _image, string _text, string _date)
    {
        timelineDataContext objtimeDC = new timelineDataContext();
        using (objtimeDC)
        {
            Timeline objNewTime = new Timeline();
            objNewTime.image = _image;
            objNewTime.text = _text;
            objNewTime.date = _date;

            objtimeDC.Timelines.InsertOnSubmit(objNewTime);
            objtimeDC.SubmitChanges();
            return true;

        }


    }
    public bool commitUpdate(int _id, string _image, string _text, string _date)
    {
        timelineDataContext objtimeDC = new timelineDataContext();
        using (objtimeDC)
        {
            var objUpTime = objtimeDC.Timelines.Single(x => x.Id == _id);
            objUpTime.image = _image;
            objUpTime.text = _text;
            objUpTime.date = _date;
            objtimeDC.SubmitChanges();
            return true;
        }
    }
    public bool commitDelete(int _id)
    {
        timelineDataContext objtimeDC = new timelineDataContext();
        using (objtimeDC)
        {
            var objDelTime = objtimeDC.Timelines.Single(x => x.Id == _id);
            objtimeDC.Timelines.DeleteOnSubmit(objDelTime);
            objtimeDC.SubmitChanges();
            return true;
        }
    }
}