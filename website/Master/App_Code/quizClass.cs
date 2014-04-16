using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for quiz
/// </summary>
public class quizClass
{
    public IQueryable<quiz> getQuiz()
    {
        quizDataContext objQuizDC = new quizDataContext();
        var allQuiz = objQuizDC.quizs.Select(x => x);
        return allQuiz;

    }

    public IQueryable<quiz> getQuizByID(int _id)
    {
        quizDataContext objQuizDC = new quizDataContext();
        var allQuiz = objQuizDC.quizs.Where(x => x.Id == _id).Select(x => x);
        return allQuiz;
    }

    public bool commitInsert(string _question)
    {
        quizDataContext objQuizDC = new quizDataContext();
        using (objQuizDC)
        {
            quiz objNewQuiz = new quiz();
            objNewQuiz.Questions = _question;
            objQuizDC.quizs.InsertOnSubmit(objNewQuiz);
            objQuizDC.SubmitChanges();
            return true;

        }
    }

    public bool commitUpdate(int _id, string _question)
    {
        quizDataContext objQuizDC = new quizDataContext();
        using (objQuizDC)
        {
            var objUpQuiz = objQuizDC.quizs.Single(x =>x.Id == _id);
            objUpQuiz.Questions = _question;
            objQuizDC.SubmitChanges();
            return true;
        }
    }
    public bool commitDelete(int _id)
    {
        quizDataContext objQuizDC = new quizDataContext();
        using (objQuizDC)
        {
            var objDelQuiz = objQuizDC.quizs.Single(x => x.Id == _id);
            objQuizDC.quizs.DeleteOnSubmit(objDelQuiz);
            objQuizDC.SubmitChanges();
            return true;
        }
    }
}