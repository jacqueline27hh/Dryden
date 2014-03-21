using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class surveyClass
{
    public IQueryable<patient_survey> getPatient_surveys()
    {
        
        surveyDataContext objSurveyDC = new surveyDataContext();
        var allSurveys = objSurveyDC.patient_surveys.Select(x => x);
        return allSurveys;
    }

    public IQueryable<patient_survey> getSurveyByID(int _id)
    {
        surveyDataContext objSurveyDC = new surveyDataContext();
        var allSurveys = objSurveyDC.patient_surveys.Where(x => x.Id == _id).Select(x => x);
        return allSurveys;

    }
    public bool commitInsert(string _fname, string _lname, string _email, string _review, string _msg)
    {
        surveyDataContext objSurveyDC = new surveyDataContext();
        using (objSurveyDC)
        {
            patient_survey objNewSurvey = new patient_survey();
            objNewSurvey.firstname = _fname;
            objNewSurvey.lastname = _lname;
            objNewSurvey.email = _email;
            objNewSurvey.reviewof = _review;
            objNewSurvey.message = _msg;

            objSurveyDC.patient_surveys.InsertOnSubmit(objNewSurvey);
            objSurveyDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _fname, string _lname, string _email, string _review, string _msg)
    {
        surveyDataContext objSurveyDC = new surveyDataContext();
        using (objSurveyDC)
        {
            var objUpSurvey = objSurveyDC.patient_surveys.Single(x => x.Id == _id);
            objUpSurvey.firstname = _fname;
            objUpSurvey.lastname = _lname;
            objUpSurvey.email = _email;
            objUpSurvey.reviewof = _review;
            objUpSurvey.message = _msg;

            objSurveyDC.SubmitChanges();
            return true;
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
        }
    }
}
