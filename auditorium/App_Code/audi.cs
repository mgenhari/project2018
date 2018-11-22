using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for audi
/// </summary>
public class audi
{
	public audi()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\auditorium\App_Data\Auditorium.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");

    public void execute(SqlCommand cmd)
    {
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception e)
        {
            e.ToString();
        }
        finally
        {
            con.Close();
        }
    }

        public DataTable getdata(SqlCommand cmd)
        {
            cmd.Connection=con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds.Tables[0];
        }
        public int max_id(SqlCommand cmd)
        {
            cmd.Connection = con;
            int i;
            try
            {
                con.Open();
                i = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
            }
            catch
            {
                i = 1;
            }
            con.Close();
            return i;
            

        }


        public int max_acct(SqlCommand cmd)
        {
            cmd.Connection = con;
            int i;
            try
            {
                con.Open();
                i = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
            }
            catch
            {
                i = 100000;
            }
            con.Close();
            return i;


        }
}