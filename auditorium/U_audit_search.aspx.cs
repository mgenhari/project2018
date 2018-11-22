using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class U_audit_search : System.Web.UI.Page
{
    audi a = new audi();
    static int aid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select distinct location from auditorium ";
            DropDownList2.DataSource = a.getdata(cmd);
            DropDownList2.DataTextField = "location";
            DropDownList2.DataValueField = "location";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--select--");
            
            

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from bookingreg where fr_date='"+TextBox1.Text+"'or to_date='"+TextBox1.Text+"'";
        DataTable dt = a.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<script>alert('This Date is already some auditorium booked')</script>)");

            cmd.CommandText = "select * from auditorium where aid<>'" + dt.Rows[0][2].ToString() + "' and location='" + DropDownList2.SelectedItem.Text + "'";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();

        }
        else
        {

            cmd.CommandText = "select * from auditorium where location='" + DropDownList2.SelectedItem.Text + "'";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();


        }


        cmd.CommandText = "select * from hour_booking where start_time='"+TextBox2.Text+"' or end_time='"+TextBox2.Text+"'";
        DataTable dtt = a.getdata(cmd);
        if (dtt.Rows.Count > 0)
        {
            Response.Write("<script>alert('This Time is already some auditorium booked')</script>)");

            cmd.CommandText = "select * from auditorium where aid<>'" + dtt.Rows[0][2].ToString() + "' and location='" + DropDownList2.SelectedItem.Text + "'";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();

        }
      

            
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select aname,aid from auditorium where location='" + DropDownList2.SelectedItem.Text + "'";
        DropDownList4.DataSource = a.getdata(cmd);
        DropDownList4.DataTextField = "aname";
        DropDownList4.DataValueField = "aid";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, "--select--");
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "normal")
        {
            Response.Redirect("U_book_audi.aspx");
        }
        if (e.CommandName == "hour")
        {
            Response.Redirect("U_hourbooking.aspx");
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}