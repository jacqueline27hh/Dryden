using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class alertClass
{
	public IQueryable<Alert> getAlerts()
	{
        alertDataContext objAlertDC = new alertDataContext();
        var allAlerts = objAlertDC.Alerts.Select(x => x);
        return allAlerts;
	}

    public IQueryable<Alert> getAlertByID(int _id)
    {
        alertDataContext objAlertDC = new alertDataContext();
        var allAlerts = objAlertDC.Alerts.Where(x => x.Id == _id).Select(x => x);
        return allAlerts;
        
    }
    public bool commitInsert(string _Title, string _Message, DateTime _date)
    {
        alertDataContext objAlertDC = new alertDataContext();
        using (objAlertDC)
        {
            Alert objNewAlert = new Alert();
            objNewAlert.Title = _Title;
            objNewAlert.Message = _Message;
            objNewAlert.Date = _date;

            objAlertDC.Alerts.InsertOnSubmit(objNewAlert);
            objAlertDC.SubmitChanges();
            return true;
        }
    }
    
    public bool commitUpdate(int _id, string _Title, string _Message)
    {
        alertDataContext objAlertDC = new alertDataContext();
        using (objAlertDC)
        {
            var objUpAlert = objAlertDC.Alerts.Single(x => x.Id == _id);
            objUpAlert.Title = _Title;
            objUpAlert.Message = _Message;

            objAlertDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        alertDataContext objAlertDC = new alertDataContext();
        using (objAlertDC)
        {
            var objDelAlert = objAlertDC.Alerts.Single(x => x.Id == _id);
            objAlertDC.Alerts.DeleteOnSubmit(objDelAlert);
            objAlertDC.SubmitChanges();
            return true;
        }
    }

    //This function gets the most recent alert for public side

    public IQueryable<Alert> getRecentAlerts()
    {
        alertDataContext objAlertDC = new alertDataContext();
        var recentAlerts = objAlertDC.Alerts.OrderByDescending(x => x.Date).Take(1);
        return recentAlerts;
    }


}