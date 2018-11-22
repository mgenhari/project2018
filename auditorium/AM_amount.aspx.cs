using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AM_amount : System.Web.UI.Page
{
    audi a = new audi();
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView2.SetActiveView(View11);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select max_id(tid) from amount";
            id = a.max_id(cmd);
            cmd.CommandText = "select aname from auditorium where aid=" + Session["id"] + "";
            DataTable dt = a.getdata(cmd);
            cmd.CommandText = "select * from amount";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();

        }
    }
   /* protected void MultiView2_ActiveViewChanged(object sender, EventArgs e)
    {

    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into amount values('"+id+"','"+Session["id"]+"','"+DropDownList1.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"')";
        a.execute(cmd);
        MultiView2.SetActiveView(View11);

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
       Label1.Text = e.Item.Cells[0].Text;
       TextBox5.Text = e.Item.Cells[1].Text;
       TextBox1.Text = e.Item.Cells[2].Text;
       TextBox2.Text = e.Item.Cells[3].Text;
       MultiView2.SetActiveView(View8);


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView2.SetActiveView(View9);

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update amount set houramount='" + TextBox3.Text + "',dayamount='" + TextBox4.Text + "' where tid=" + Label1.Text + " ";
        a.execute(cmd);
        Response.Write("<script>alert('updated')</script>)");
        MultiView2.SetActiveView(View11);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from amount where tid=" + Label1.Text + "";
        a.execute(cmd);
        Response.Write("<script>alert('deleted')</script>)");
        MultiView2.SetActiveView(View11);
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        
    }
}