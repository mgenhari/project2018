using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class U_post_comp_rating_audi : System.Web.UI.Page
{
    audi a = new audi();
    static int cid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            MultiView1.SetActiveView(View1);

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT distinct a.aname, a.aid FROM auditorium AS a  INNER JOIN bookingreg AS b ON a.aid = b.aid";
            DropDownList1.DataSource = a.getdata(cmd);
            DropDownList1.DataTextField = "aname";
            DropDownList1.DataValueField = "aid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
            TextBox2.Text = System.DateTime.Now.ToShortDateString();


            cmd.CommandText = "select max(cid) from complaint";
            cid = a.max_id(cmd);

          

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select max(cid) from complaint";
        cid = a.max_id(cmd);
        cmd.CommandText = "insert into complaint values('" + cid + "','" + Session["id"] + "','" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "','" + TextBox1.Text + "','pending')";
        a.execute(cmd);
        Response.Write("<script>alert('success')</script>");
        DropDownList1.SelectedIndex = -1;
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        SqlCommand cmd=new SqlCommand();
        cmd.CommandText="select * from complaint where reply!='pending' and uid="+Session["id"]+"";
        DataGrid1.DataSource = a.getdata(cmd);
        DataGrid1.DataBind();
        
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from complaint ";
        DataGrid1.DataSource = a.getdata(cmd);
        DataGrid1.DataBind();

    }
}