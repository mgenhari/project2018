using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AM_create_profile : System.Web.UI.Page
{
    audi a = new audi();
    
    static string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            Label1.Text = Session["id"].ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select max(aid) from auditorium";
            TextBox1.Text = Label1.Text;// a.max_id(cmd).ToString();
            cmd.CommandText = "select * from auditorium where aid=" + Label1.Text;
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();


        
        }
        
          

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        path = "~/img/" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image1.ImageUrl = path;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        SqlCommand cmd = new SqlCommand();
              cmd.CommandText = "update auditorium set aname='"+TextBox1.Text+"',location='"+TextBox2.Text+"',address='"+TextBox3.Text+"',cont_no='"+TextBox4.Text+"',email='"+TextBox5.Text+"',image='"+path+"' where aid="+Label1.Text+"";
        a.execute(cmd);
        Response.Write("<script>alert('successful')</script>");
       
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        MultiView1.SetActiveView(View2);
        Label1.Text = e.Item.Cells[0].Text;
       TextBox1.Text = e.Item.Cells[1].Text;
        TextBox2.Text = e.Item.Cells[2].Text;
       
        TextBox4.Text = e.Item.Cells[3].Text;
        TextBox5.Text = e.Item.Cells[4].Text;

    }
}