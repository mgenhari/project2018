using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class U_hourbooking : System.Web.UI.Page

{
    audi a = new audi();
    static int hid;
    static int amt_t;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            MultiView1.SetActiveView(View2);
            SqlCommand cmd = new SqlCommand();



            cmd.CommandText = "select * from auditorium ";
            DropDownList2.DataSource = a.getdata(cmd);
            DropDownList2.DataTextField = "aname";
            DropDownList2.DataValueField = "aid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--select--");


            DropDownList4.Items.Insert(0, "Month");
            for (int i = 1; i <= 12; i++)
            {
                DropDownList4.Items.Add(i.ToString());
            }

            DropDownList5.Items.Insert(0, "Year");

            for (int i = 2018; i <= 2050; i++)
            {
                DropDownList5.Items.Add(i.ToString());
            }
            DropDownList6.Items.Insert(0, "Day");
            for (int i = 1; i <= 31; i++)
            {
                DropDownList6.Items.Add(i.ToString());
            }


            cmd.CommandText = "SELECT auditorium.aname, hour_booking.date, hour_booking.start_time, hour_booking.end_time, hour_booking.amount FROM hour_booking INNER JOIN auditorium ON hour_booking.aid = auditorium.aid where hour_booking.uid='" + Session["id"] + "'";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();

            cmd.CommandText = "select max(hid) from hour_booking";
            hid = a.max_id(cmd);

        }
            
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        if (DropDownList9.Text == "Normal Days")
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select houramount from amount where aid='" + DropDownList2.SelectedValue + "' and type='Normal Days'";
            DataTable dt = a.getdata(cmd);

            amt_t =Convert.ToInt32(dt.Rows[0][0].ToString());


            TextBox5.Text = (amt_t *Convert.ToInt32(Label1.Text)).ToString();


        }
        else if (DropDownList9.Text == "Sundays")
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select houramount from amount where aid='" + DropDownList2.SelectedValue + "' and type='Sundays'";
            DataTable dt = a.getdata(cmd);

            amt_t = Convert.ToInt32(dt.Rows[0][0].ToString());

            TextBox5.Text = (amt_t * Convert.ToInt32(Label1.Text)).ToString();

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        MultiView1.SetActiveView(View3);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Label1.Text) > 4)
        {
            Response.Write("<script>alert('minimum hour is 4 hour,so booking your normal booking ')</script>");

        }
        else
        {
            string date = DropDownList6.Text + "/" + DropDownList4.Text + "/" + DropDownList5.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into  hour_booking values('" + hid + "','" + DropDownList2.SelectedValue + "','" + Session["id"] + "','" + date + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            a.execute(cmd);

            cmd.CommandText = "select wallet from account where uid='" + Session["id"] + "' and u_type='user'";
            DataTable dt = a.getdata(cmd);
            int amt_wlt = Convert.ToInt32(dt.Rows[0][0].ToString());
            if (Convert.ToInt32(TextBox5.Text) < amt_wlt)
            {


                int bal = amt_wlt - Convert.ToInt32(TextBox5.Text);

                cmd.CommandText = "update account set wallet='" + bal + "' where uid='" + Session["id"] + "' and u_type='user'";
                a.execute(cmd);

                cmd.CommandText = "select wallet from account where uid='" + DropDownList2.SelectedValue + "' and u_type='audi'";
                DataTable dt1 = a.getdata(cmd);
                int dt1_w = Convert.ToInt32(dt1.Rows[0][0].ToString());

                int tt_w = dt1_w + Convert.ToInt32(TextBox5.Text);

                cmd.CommandText = "update account set wallet='" + tt_w + "' where uid='" + DropDownList2.SelectedValue + "' and u_type='audi'";
                a.execute(cmd);


            }
            else
            {
                Response.Write("<script>alert('Your account balance is low')</script>");
            }

            Response.Write("<script>alert('success')</script>)");
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        MultiView1.SetActiveView(View3);
       // i = Convert.ToInt32(e.Item.Cells[0].Text);
       // DropDownList3.SelectedItem.Text = e.Item.Cells[1].Text;
       // TextBox6.Text = e.Item.Cells[3].Text;
       
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        string e1 = TextBox2.Text;
        string e2 = TextBox4.Text;


        TimeSpan d5 = DateTime.Parse(e2).Subtract(DateTime.Parse(e1));


        string path = d5.ToString();
        string[] pathArr = path.Split(':');
        string pt = pathArr[0].ToString();

        //string[] p = pt.Split('0');

        Label1.Text = pt.ToString();
    }
}