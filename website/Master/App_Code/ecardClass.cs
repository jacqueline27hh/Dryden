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
    public bool commitInsert(string _name, string _recipient, string _background, string _tagline, string _message)
    {
        ecardDataContext objEcardDC = new ecardDataContext();
        using (objEcardDC)
        {
            E_card objEcard = new E_card();
            objEcard.name = _name;
            //objEcard.email = _email;
            objEcard.recipient = _recipient; 
            objEcard.background = _background;
            objEcard.tagline = _tagline;
            objEcard.message = _message;

            objEcardDC.E_cards.InsertOnSubmit(objEcard);
            objEcardDC.SubmitChanges();
            return true;
            //return "Insert complete";
        }
    }

    public bool commitUpdate(int _id, string _name, string _recipient, string _background, string _tagline, string _message)
    {
        ecardDataContext objEcardDC = new ecardDataContext();
        using (objEcardDC)
        {   var objUpEcard = objEcardDC.E_cards.Single(x => x.Id == _id);
            objUpEcard.name = _name;
            objUpEcard.recipient = _recipient;
            objUpEcard.background = _background;
            objUpEcard.tagline = _tagline;
            objUpEcard.message = _message;


            objEcardDC.SubmitChanges();
            return true;
            //return "Update successful";
        }
    }

    public bool commitDelete(int _id)
    {
        ecardDataContext objEcardDC = new ecardDataContext();
        using (objEcardDC)
        {
            var objDelEcard = objEcardDC.E_cards.Single(x => x.Id == _id);
            objEcardDC.E_cards.DeleteOnSubmit(objDelEcard);
            objEcardDC.SubmitChanges();
            return true;
            //return "Delete successful";
        }
    }
}