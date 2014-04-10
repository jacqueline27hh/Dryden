using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ecardClass
{
    public IQueryable<E_card> getE_card()
    {

        ecardDataContext objEcardDC = new ecardDataContext();
        var allEcards = objEcardDC.E_cards.Select(x => x);
        return allEcards;
    }

    public IQueryable<E_card> getE_cardByID(int _id)
    {
        ecardDataContext objEcardDC = new ecardDataContext();
        var allEcards = objEcardDC.E_cards.Where(x => x.Id == _id).Select(x => x);
        return allEcards;

    }
    public bool commitInsert(string _name, string _email, string _rec, string _bg, string _tag, string _msg)
    {
        ecardDataContext objEcardDC = new ecardDataContext();
        using (objEcardDC)
        {
            //ecardClass objEcard = new ecardClass();
            //objEcard.name = _name;
            //objEcard.email = _email;
            //objEcard.recipient = _rec;
            //objEcard.background = _bg;
            //objEcard.tagline = _tag;
            //objEcard.msg = _msg;

            //objEcardDC.E_cards.InsertOnSubmit(objEcard);
            //objEcardDC.SubmitChanges();
            return true;
            //return "Insert complete";
        }
    }

    public bool commitUpdate(int _id, string _name, string _email, string _rec, string _bg, string _tag, string _msg)
    {
        surveyDataContext objSurveyDC = new surveyDataContext();
        using (objSurveyDC)
        {
            //var objUpSurvey = objSurveyDC.patient_surveys.Single(x => x.Id == _id);
            //objUpSurvey.firstname = _name;
            //objUpSurvey.lastname = _email;
            //objUpSurvey.email = _rec;
            //objUpSurvey.reviewof = _bg;
            //objUpSurvey.message = _tag;
            //objSurvey

            //objSurveyDC.SubmitChanges();
            return true;
            //return "Update successful";
        }
    }

    public bool commitDelete(int _id)
    {
        surveyDataContext objSurveyDC = new surveyDataContext();
        using (objSurveyDC)
        {
            var objDelSurvey = objSurveyDC.patient_surveys.Single(x => x.Id == _id);
            objSurveyDC.patient_surveys.DeleteOnSubmit(objDelSurvey);
            objSurveyDC.SubmitChanges();
            return true;
            //return "Delete successful";
        }
    }
}