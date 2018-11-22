using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class L_login : System.Web.UI.Page
{
    audi a = new audi();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        DataTable dt = a.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            Session["id"] = dt.Rows[0][0];
            string type = dt.Rows[0][3].ToString();
            if (type == "admin")
            {
                Response.Redirect("A_home.aspx");
            }
            else if (type == "auditorium")
            {
                Response.Redirect("AM_home.aspx");
            }
            else
            {
                Response.Redirect("U_home.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid user name and password')</script>");

        }
    }
}