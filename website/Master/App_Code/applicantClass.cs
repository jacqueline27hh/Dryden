using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class applicantClass
{
    public IQueryable<applicant> getApplicants()
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        var allApplicants = objApplicantDC.applicants.Select(x => x);
        return allApplicants;
    }

    public IQueryable<applicant> getApplicantByID(int _id)
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        var allApplicants = objApplicantDC.applicants.Where(x => x.Id == _id).Select(x => x);
        return allApplicants;

    }
    public bool commitInsert(int _jobID, string _fname, string _lname, string _email)
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        using (objApplicantDC)
        {
            applicant objNewApplicant = new applicant();
            objNewApplicant.firstname = _fname;
            objNewApplicant.lastname = _lname;
            objNewApplicant.email = _email;
            objNewApplicant.job_id = _jobID;

            objApplicantDC.applicants.InsertOnSubmit(objNewApplicant);
            objApplicantDC.SubmitChanges();
            return true;
        }
    }

    public bool commitUpdate(int _id, string _fname, string _lname, string _email)
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        using (objApplicantDC)
        {
            var objUpApplicant = objApplicantDC.applicants.Single(x => x.Id == _id);
            objUpApplicant.firstname = _fname;
            objUpApplicant.lastname = _lname;
            objUpApplicant.email = _email;

            objApplicantDC.SubmitChanges();
            return true;
        }
    }

    public bool commitDelete(int _id)
    {
        applicantsDataContext objApplicantDC = new applicantsDataContext();
        using (objApplicantDC)
        {
            var objDelApplicant = objApplicantDC.applicants.Single(x => x.Id == _id);
            objApplicantDC.applicants.DeleteOnSubmit(objDelApplicant);
            objApplicantDC.SubmitChanges();
            return true;
        }
    }

    public string filename_res { set; get; } 
    public string extension_res { set; get; } 
    public string content_res { set; get; }
    public string filename_cv { set; get; }
    public string extension_cv { set; get; }
    public string content_cv { set; get; }

    public string SaveFileToDB() 
    { 
        using (SqlConnection conn = new SqlConnection("Data Source=RAMILU-PC\\SQLEXPRESS;" + 
            "Initial Catalog=ExampleDB;Integrated Security=True;Pooling=False")) 
            { 
                SqlCommand cmd = new SqlCommand(); 
                cmd.CommandType = CommandType.StoredProcedure; 
                cmd.CommandText = "SaveFilesProc"; 
                cmd.Connection = conn;
 
                cmd.Parameters.AddWithValue("@fileNameRes", filename_res); 
                cmd.Parameters.AddWithValue("@fileExtensionRes", extension_res); 
                cmd.Parameters.AddWithValue("@contentRes", content_res);
                cmd.Parameters.AddWithValue("@fileNameCV", filename_cv);
                cmd.Parameters.AddWithValue("@fileExtensionCV", extension_cv);
                cmd.Parameters.AddWithValue("@contentCV", content_cv);
            
                try 
                { 
                    conn.Open(); 
                    cmd.ExecuteNonQuery(); 
                    return "File uploaded Successfully!!!"; 
                } 
            
                catch (Exception ex) 
                { 
                    return ex.Message; 
                } 
            
                finally 
                { 
                    conn.Close(); 
                    cmd.Dispose(); conn.Dispose(); 
                } 
            } 
        } 
}
