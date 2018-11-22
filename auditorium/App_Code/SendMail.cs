using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.IO;

/// <summary>
/// Summary description for SendMail
/// </summary>
public class SendMail
{
	public SendMail()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string sendmail(string emailid, string data, string subject)
    {
        string email = "projectminnu2018@gmail.com";
        string passw = "auditorium2018";
        string resp = "";
        // string emailid = txt_email.Text;

        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress(email);
            mail.To.Add(emailid);
            mail.Subject = subject;
            mail.Body = data;

            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential(email, passw);
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            //Response.Write("<Script>alert('OTP Mailed') </script>");
            resp = "ok";
        }

        catch (Exception ex)
        {
            //  ex.ToString();
            // Response.Write("<Script>alert(' OTP did not sent to Mail Beacouse of Network Error or Other') </script>");
            resp = "Mail Error";
        }
        return resp;
    }
}