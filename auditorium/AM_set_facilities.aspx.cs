using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AM_set_facilities : System.Web.UI.Page
{
    audi a = new audi();
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View2);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select max(fid) from facility";
            id = a.max_id(cmd);
            cmd.CommandText = "select aname from auditorium where aid="+Session["id"]+"";
            DataTable dt = a.getdata(cmd);
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0][0].ToString();
            }
            cmd.CommandText = "SELECT facility.fid, auditorium.aname, facility.facility FROM auditorium INNER JOIN facility ON auditorium.aid = facility.aid ";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();

            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into facility values('" + id + "','" + Session["id"] + "','"+DropDownList1.Text+"','"+TextBox2.Text+"')";
        a.execute(cmd);
        Response.Write("<script>alert('success')</script>)");

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        Label1.Text = e.Item.Cells[0].Text;
        TextBox3.Text = e.Item.Cells[1].Text;
        TextBox4.Text = e.Item.Cells[2].Text;
        MultiView1.SetActiveView(View3);
        

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update facility set facility='" + TextBox4.Text + "',rate='"+TextBox6.Text+"' where aid="+ Session["id"] +" ";
        a.execute(cmd);
        Response.Write("<script>alert('updated')</script>)");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from facility where aid=" + Session["id"] + "";
        a.execute(cmd);
        Response.Write("<script>alert('deleted')</script>)");
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}