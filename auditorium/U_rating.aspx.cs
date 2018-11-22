using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class U_rating : System.Web.UI.Page
{
    audi a=new audi();
    static int r1, r2, r3, r4, r5, r6;
    static int id;

    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {
           
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select max(rid) from rating";
            id = a.max_id(cmd);
            cmd.CommandText = "SELECT auditorium.aid,auditorium.aname, auditorium.location, auditorium.cont_no, auditorium.email, auditorium.image, rating.rating FROM auditorium INNER JOIN rating ON auditorium.aid = rating.aid ";
             DataGrid3.DataSource = a.getdata(cmd);
             DataGrid3.DataBind();
             MultiView1.SetActiveView(View10);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd= new SqlCommand();
        cmd.CommandText = "insert into rating values('" + id + "','" + Session["id"] + "','"+Label1.Text+"','" + TextBox1.Text + "')";
        a.execute(cmd);
        Response.Write("<script>alert('success')</script>");
        MultiView1.SetActiveView(View9);

    }
protected void  DataGrid3_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void  DataGrid3_ItemCommand(object source, DataGridCommandEventArgs e)
{
    Label1.Text = e.Item.Cells[0].Text;
    TextBox2.Text=e.Item.Cells[1].Text;
    MultiView1.SetActiveView(View9);
}

protected void  ImageButton1_Command(object sender, CommandEventArgs e)
{
    MultiView1.SetActiveView(View9);
    r1 = 1;
    TextBox1.Text = r1.ToString();
}
protected void ImageButton3_Command(object sender, CommandEventArgs e)
{
    MultiView1.SetActiveView(View9);
    r2 = 1;
    r6 = r1 + r2;
    TextBox1.Text = r6.ToString();
}
protected void ImageButton2_Command(object sender, CommandEventArgs e)
{
    MultiView1.SetActiveView(View9);
    r3 = 1;
    r6 = r1 + r2+r3;
    TextBox1.Text = r6.ToString();
}

protected void ImageButton4_Command(object sender, CommandEventArgs e)
{
    MultiView1.SetActiveView(View9);
    r4 = 1;
    r6 = r1 + r2 + r3+r4;
    TextBox1.Text = r6.ToString();
}
protected void ImageButton5_Command(object sender, CommandEventArgs e)
{
    MultiView1.SetActiveView(View9);
    r5 = 1;
    r6 = r1 + r2 + r3 + r4+r5;
    TextBox1.Text = r6.ToString();
}
protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
{

}
}