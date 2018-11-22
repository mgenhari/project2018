using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class A_view_complaint_replay : System.Web.UI.Page
{
    audi a = new audi();
    static int cid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from complaint where reply='pending'";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();
        }
    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        TextBox1.Text = e.Item.Cells[2].Text;
        TextBox2.Text = e.Item.Cells[3].Text;
        cid = Convert.ToInt32(e.Item.Cells[0].Text);
        MultiView1.SetActiveView(View2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update complaint set reply='" + TextBox3.Text + "' where cid='" + cid + "'";
        a.execute(cmd);
        MultiView1.SetActiveView(View1);
       
        cmd.CommandText = "select * from complaint where reply='pending'";
        DataGrid1.DataSource = a.getdata(cmd);
        DataGrid1.DataBind();
    }
}