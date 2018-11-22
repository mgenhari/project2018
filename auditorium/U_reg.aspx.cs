using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class U_reg : System.Web.UI.Page
{
    audi a = new audi();
    static int uid,act_no;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select max(uid) from user_reg";
            uid = a.max_id(cmd);


            cmd.CommandText = "select max(act_no) from account";
            act_no = a.max_acct(cmd);

            
      
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd=new SqlCommand();
        cmd.CommandText="insert into user_reg values('"+uid+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+RadioButtonList1.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"')";
        a.execute(cmd);
        cmd.CommandText = "insert into login values('" + uid + "','" + TextBox7.Text + "','" + TextBox8.Text + "','user')";
        a.execute(cmd);
        cmd.CommandText = "insert into account values('" + act_no + "','" + uid + "','pending','user')";
        a.execute(cmd);

        Response.Write("<script>alert('success')</script>");
        cmd.CommandText="select max(uid) from user_reg";
        Label1.Text=a.max_id(cmd).ToString();
        TextBox1.Text="";
        TextBox2.Text="";
        RadioButtonList1.Text = "";
        TextBox3.Text="";
        TextBox4.Text="";
        TextBox5.Text="";
        TextBox6.Text="";
        TextBox7.Text="";
        TextBox8.Text="";

    }
    
}