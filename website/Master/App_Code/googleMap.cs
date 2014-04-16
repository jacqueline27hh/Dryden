using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for googleMap
/// </summary>
public class googleMap
{
    public IQueryable<google_map> getData()
    {
        googleMapDataContext objDC = new googleMapDataContext();
        var allData = objDC.google_maps.Select(x => x);
        return allData;
    }

    public string updateData(string lat, string lng) 
    {
        googleMapDataContext objDC = new googleMapDataContext();
        using (objDC)
        {
            var objGoogleInstance = objDC.google_maps.Single(x => x.Id == 1);
            objGoogleInstance.lat = lat;
            objGoogleInstance.lng = lng;
            objDC.SubmitChanges();  
            return "Your update was successful";
        }
    }
}