using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class U_book_audi : System.Web.UI.Page
{
    audi a = new audi();
    static int bid;
    public static int tam,aidn;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            MultiView1.SetActiveView(View2);
            SqlCommand cmd = new SqlCommand();
          
           
            cmd.CommandText = "select * from auditorium ";
            DropDownList7.DataSource = a.getdata(cmd);
            DropDownList7.DataTextField = "aname";
            DropDownList7.DataValueField = "aid";
            DropDownList7.DataBind();
            DropDownList7.Items.Insert(0, "--select--");
            for (int i = 1; i <= 31; i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            DropDownList1.Items.Insert(0, "Day");
            for (int i = 1; i <= 12; i++)
            {
                DropDownList2.Items.Add(i.ToString());
            }
            DropDownList2.Items.Insert(0, "Month");

            for (int i = 2018; i <= 2050; i++)
            {
                DropDownList3.Items.Add(i.ToString());
            }
            DropDownList3.Items.Insert(0, "Year");
            for (int i = 1; i <= 31; i++)
            {
                DropDownList4.Items.Add(i.ToString());
            }
            DropDownList4.Items.Insert(0, "Day");
            for (int i = 1; i <= 12; i++)
            {
                DropDownList5.Items.Add(i.ToString());
            }
            DropDownList5.Items.Insert(0, "Month");
            for (int i = 2018; i <= 2050; i++)
            {
                DropDownList6.Items.Add(i.ToString());
            }
            DropDownList6.Items.Insert(0, "Year");

            
            cmd.CommandText = "select * from bookingreg where uid="+Session["id"]+" and status='pending'";
            DataGrid2.DataSource = a.getdata(cmd);
            DataGrid2.DataBind();

            
       }
      
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        string fr_date = DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text;
        string to_date = DropDownList4.Text + "/" + DropDownList5.Text + "/" + DropDownList6.Text;
        cmd.CommandText = "select max(bid) from bookingreg";
        bid = a.max_id(cmd);
        if (DropDownList9.Text == "Normal Days")
        {


            cmd.CommandText = "insert into bookingreg values('" + bid + "','" + Session["id"] + "','" + DropDownList7.SelectedValue + "','" + fr_date + "','" + to_date + "','" + TextBox4.Text + "','"+DropDownList10.SelectedValue+"','0','pending')";
            a.execute(cmd);
        }

        else if (DropDownList9.Text == "Sundays")
        {


            cmd.CommandText = "insert into bookingreg values('" + bid + "','" + Session["id"] + "','" + DropDownList7.SelectedValue + "','" + fr_date + "','" + fr_date + "','" + TextBox4.Text + "','" + DropDownList10.SelectedValue + "','0','pending')";
            a.execute(cmd);
        }
        
        Response.Write("<script>alert('success')</script>)");
        TextBox4.Text = "";
        TextBox9.Text = "";
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1; 
        DropDownList3.SelectedIndex = -1;
        DropDownList4.SelectedIndex = -1;
        DropDownList5.SelectedIndex = -1;
        DropDownList6.SelectedIndex = -1;
        DropDownList7.SelectedIndex = -1;
        DropDownList1.SelectedIndex = -1;
        DropDownList9.SelectedIndex = -1;
        MultiView1.SetActiveView(View7);

        TextBox7.Text = tam.ToString();
       
        
     
       

    }
    protected void DataGrid2_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        if (e.CommandName == "cancel")
        {
           
            cmd.CommandText = "update bookingreg set status='cancelled' where bid=" + e.Item.Cells[0].Text + "";
            a.execute(cmd);
            Response.Write("<script>alert('Cancelled booking')</script>");
        }
       
        cmd.CommandText = "select * from bookingreg where uid='"+Session["id"]+"'";
        DataGrid2.DataSource = a.getdata(cmd);
        DataGrid2.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update bookingreg set total_amt='"+TextBox8.Text+"',pkg_id='"+DropDownList10.SelectedValue+"' where bid='"+bid+"'";
        a.execute(cmd);

        cmd.CommandText = "select wallet from account where uid='"+Session["id"]+"' and u_type='user'";
        DataTable dt = a.getdata(cmd);
        int amt_wlt =Convert.ToInt32(dt.Rows[0][0].ToString());
        if (Convert.ToInt32(TextBox8.Text) < amt_wlt)
        {


            int bal = amt_wlt - Convert.ToInt32(TextBox8.Text);

            cmd.CommandText = "update account set wallet='" + bal + "' where uid='" + Session["id"] + "' and u_type='user'";
            a.execute(cmd);

            cmd.CommandText = "select wallet from account where uid='" + aidn + "' and u_type='audi'";
            DataTable dt1 = a.getdata(cmd);
            int dt1_w=Convert.ToInt32(dt1.Rows[0][0].ToString());

            int tt_w=dt1_w+Convert.ToInt32(TextBox8.Text);

            cmd.CommandText = "update account set wallet='" + tt_w + "' where uid='" + aidn + "' and u_type='audi'";
            a.execute(cmd);


        }
        else
        {
            Response.Write("<script>alert('Your account balance is low')</script>");
        }

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {
         SqlCommand cmd = new SqlCommand();
        
            cmd.CommandText = "select location,aid from auditorium";
            DataTable dt = a.getdata(cmd);
            if (dt.Rows.Count > 0)
            {
                TextBox9.Text=dt.Rows[0][0].ToString();
                aidn=Convert.ToInt32(dt.Rows[0][1].ToString());
            }
            cmd.CommandText = "select rent_amt from auditorium where aid='" + DropDownList7.SelectedValue + "'";
            DataTable b = a.getdata(cmd);
            tam = Convert.ToInt32(b.Rows[0][0].ToString());


            cmd.CommandText = "select pgid,package from package where aid='" + DropDownList7.SelectedValue + "'";
            DropDownList10.DataSource = a.getdata(cmd);
            DropDownList10.DataTextField = "package";
            DropDownList10.DataValueField = "pgid";
            DropDownList10.DataBind();
            DropDownList10.Items.Insert(0, "--select--");

    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList9.Text == "Sundays")
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select dayamount from amount where type='Sundays'";
            DataTable d = a.getdata(cmd);
            tam = (Convert.ToInt32(d.Rows[0][0].ToString())+tam);


            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            DropDownList6.Visible = false;
            Label1.Visible = false;
        }
        if (DropDownList9.Text == "Normal Days")
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select dayamount from amount where type='Normal Days'";
            DataTable d = a.getdata(cmd);
           tam = (Convert.ToInt32(d.Rows[0][0].ToString()) + tam);

            DropDownList4.Visible = true;
            DropDownList5.Visible = true;
            DropDownList6.Visible = true;
            Label1.Visible = true;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select rate from facility where facility='" + RadioButtonList1.SelectedValue + "'";
        DataTable dt = a.getdata(cmd);
        tam = (Convert.ToInt32(TextBox7.Text) + Convert.ToInt32(dt.Rows[0][0].ToString()));


       

        string s = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                cmd.CommandText = "select rate from facility where facility='" + CheckBoxList1.Items[i].Value + "'";
                DataTable t = a.getdata(cmd);
                tam = tam + Convert.ToInt32(t.Rows[0][0].ToString());


                s += CheckBoxList1.Items[i].Value + ",";
            }
        }
        TextBox8.Text = tam.ToString();
        s = s.TrimEnd(',');

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from bookingreg where bid='"+bid+"'";
        a.execute(cmd);
        MultiView1.SetActiveView(View1);
    }
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select rate from package where pgid='" + DropDownList10.SelectedValue + "' and aid='"+DropDownList7.SelectedValue+"'";
        DataTable l = a.getdata(cmd);
        tam = tam + Convert.ToInt32(l.Rows[0][0].ToString());
    }
}