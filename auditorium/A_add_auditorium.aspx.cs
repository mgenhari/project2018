using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class A_add_auditorium : System.Web.UI.Page
{
    audi a = new audi();
    static int act_no;
    SendMail sm = new SendMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            MultiView1.SetActiveView(View2);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select max(aid) from auditorium";
            TextBox1.Text = a.max_id(cmd).ToString();
            cmd.CommandText = "select * from auditorium";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();


            cmd.CommandText = "select max(act_no) from account";
            act_no = a.max_acct(cmd);


        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
        Button3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into auditorium values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','pending','pending','pending')";
        a.execute(cmd);
        Random rd = new Random();
        string psw = rd.Next(100000, 900000).ToString();
        cmd.CommandText = "insert into login values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + psw + "','auditorium')";
        a.execute(cmd);

        sm.sendmail(TextBox5.Text,psw,"Your Password");
        cmd.CommandText = "insert into account values(" + act_no + ",'" + TextBox1.Text + "','pending','audi')";
        a.execute(cmd);

        Response.Write("<script>alert('success')</script>");
        cmd.CommandText = "select max(aid) from auditorium";
        TextBox1.Text = a.max_id(cmd).ToString();

        cmd.CommandText = "select max(act_no) from account";
        act_no = a.max_acct(cmd);

        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText="update auditorium set aname='"+TextBox2.Text+"',location='"+TextBox3.Text+"',cont_no='"+TextBox4.Text+"' where aid="+TextBox1.Text+"";
            a.execute(cmd);
        Response.Write("<script>alert('updated')</script>");
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        MultiView1.SetActiveView(View2);
        cmd.CommandText = "select * from auditorium";
        DataGrid1.DataSource = a.getdata(cmd);
        DataGrid1.DataBind();

    }

    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            MultiView1.SetActiveView(View1);
            TextBox1.Text = e.Item.Cells[0].Text;
            TextBox2.Text = e.Item.Cells[1].Text;
            TextBox3.Text = e.Item.Cells[2].Text;
            TextBox4.Text = e.Item.Cells[3].Text;
            Button1.Visible = false;
            Button4.Visible = false;
        }
        else
        {
            MultiView1.SetActiveView(View2);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "delete from auditorium where aid=" + e.Item.Cells[0].Text + "";
            a.execute(cmd);

        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}