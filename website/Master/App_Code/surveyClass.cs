using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class surveyClass
{
    public IQueryable<patient_survey> getpatient_survey()
    {
        
        surveyDataContext objSurveyDC = new surveyDataContext();
        var allSurveys = objSurveyDC.patient_surveys.Select(x => x);
        return allSurveys;
    }

    public IQueryable<patient_survey> getpatient_surveyByID(int _id)
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
            patient_survey objSurvey = new patient_survey();
            objSurvey.firstname = _fname;
            objSurvey.lastname = _lname;
            objSurvey.email = _email;
            objSurvey.reviewof = _review;
            objSurvey.message = _msg;

            objSurveyDC.patient_surveys.InsertOnSubmit(objSurvey);
            objSurveyDC.SubmitChanges();
            return true;
            //return "Insert complete";
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
