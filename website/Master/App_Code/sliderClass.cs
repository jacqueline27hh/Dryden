using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for sliderClass
/// </summary>
public class sliderClass
{
    public IQueryable<Imageslider> getAllSlides()
    {
        imageSliderDataContext objImgDC = new imageSliderDataContext();
        var allSlides = objImgDC.Imagesliders.Select(x => x);
        return allSlides;
    }

    public string updateSlides(string cap1, string cap2, string cap3, string url1)
    {
        imageSliderDataContext objImgDC = new imageSliderDataContext();
        using (objImgDC)
        {
            var objSliderInstance = objImgDC.Imagesliders.Single(x => x.Id == 1);
            objSliderInstance.caption1 = cap1;
            objSliderInstance.caption2 = cap2;
            objSliderInstance.caption3 = cap3;
            objSliderInstance.imageurl1 = url1; 
            objImgDC.SubmitChanges();
            return "Your update was successful";
        }
    }

    //public IQueryable<Imageslider> insertSlide()
    //{
    //}

    //public IQueryable<Imageslider> deleteSlide()
    //{

    //}
}