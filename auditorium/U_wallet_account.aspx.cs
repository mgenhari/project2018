using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class U_wallet_account : System.Web.UI.Page
{
    audi a = new audi();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from account where uid='"+Session["id"]+"'";
            DataTable dt = a.getdata(cmd);
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0][0].ToString();
                Label1.Text=dt.Rows[0][2].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int wlt =Convert.ToInt32(Label1.Text) +Convert.ToInt32(TextBox2.Text);

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update account set wallet='" + wlt + "' where uid='" + Session["id"] + "' and u_type='user'";
        a.execute(cmd);

        cmd.CommandText = "select wallet from account where uid='" + Session["id"] + "' and u_type='user'";
        DataTable dt = a.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0][0].ToString();
        }

        Response.Write("<script>alert('success')</script>");

    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select wallet from account where uid='" + Session["id"] + "' and u_type='user'";
        DataTable dt = a.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0][0].ToString();
        }
    }
}