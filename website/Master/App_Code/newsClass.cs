using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for newsClass
/// </summary>
public class newsClass
{
	public IQueryable<New> getNews()
	{
        newsDataContext objNewsDC = new newsDataContext();
        var allNews = objNewsDC.News.Select(x => x);
        return allNews;
		
	}

    public IQueryable<New> getNewsByID(int _id)
    {
        newsDataContext objNewsDC = new newsDataContext();
        var allNews = objNewsDC.News.Where(x => x.Id == _id).Select(x => x);
        return allNews;
        
    }

    public bool commitInsert(string _date1, string _date2, string _date3, string _date4, string _title1, string _title2, string _title3, string _title4, string _text1, string _text2, string _text3, string _text4, string _image1, string _image2, string _image3, string _image4)
    {
        newsDataContext objNewsDC = new newsDataContext();
        using (objNewsDC)
        {
            New objNewNew = new New();
            objNewNew.date1 = _date1;
            objNewNew.date2 = _date2;
            objNewNew.date3 = _date3;
            objNewNew.date4 = _date4;
            objNewNew.title1 = _title1;
            objNewNew.title2 = _title2;
            objNewNew.title3 = _title3;
            objNewNew.title4 = _title4;
            objNewNew.text1 = _text1;
            objNewNew.text2 = _text2;
            objNewNew.text3 = _text3;
            objNewNew.text4 = _text4;
            objNewNew.image1 = _image1;
            objNewNew.image2 = _image2;
            objNewNew.image3 = _image3;
            objNewNew.image4 = _image4;

            objNewsDC.News.InsertOnSubmit(objNewNew);
            objNewsDC.SubmitChanges();
            return true;



        }
    }
    public bool commitUpdate(int _Id, string _date1, string _date2, string _date3, string _date4, string _title1, string _title2, string _title3, string _title4, string _text1, string _text2, string _text3, string _text4, string _image1, string _image2, string _image3, string _image4)
    {
        newsDataContext objNewsDC = new newsDataContext();
        using (objNewsDC)
        {
            var objUpNews = objNewsDC.News.Single(x => x.Id == _Id);
            objUpNews.date1 = _date1;
            objUpNews.date2 = _date2;
            objUpNews.date3 = _date3;
            objUpNews.date4 = _date4;
            objUpNews.title1 = _title1;
            objUpNews.title2 = _title2;
            objUpNews.title3 = _title3;
            objUpNews.title4 = _title4;
            objUpNews.text1 = _text1;
            objUpNews.text2 = _text2;
            objUpNews.text3 = _text3;
            objUpNews.text4 = _text4;
            objUpNews.image1 = _image1;
            objUpNews.image2 = _image2;
            objUpNews.image3 = _image3;
            objUpNews.image4 = _image4;

            objNewsDC.SubmitChanges();
            return true;

        }

    }
    public bool commitDelete(int _Id)
    {
        newsDataContext objNewsDC = new newsDataContext();
        using (objNewsDC)
        {
            var objDelNews = objNewsDC.News.Single(x => x.Id == _Id);
            objNewsDC.News.DeleteOnSubmit(objDelNews);
            objNewsDC.SubmitChanges();
            return true;
        }

    }
}