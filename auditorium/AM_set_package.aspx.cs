using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AM_set_package : System.Web.UI.Page
{
    audi a = new audi();
    static int id,i;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.SetActiveView(View1);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select max(pgid) from package";
            id = a.max_id(cmd);

            cmd.CommandText = "SELECT package.pgid, auditorium.aname,package.pgid, package.package,package.rate FROM auditorium INNER JOIN package ON auditorium.aid = package.pgid ";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();


        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View4);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into  package values('" + id + "','" + Session["id"] + "','" + DropDownList2.Text + "','" + TextBox5.Text + "')";
        a.execute(cmd);
        Response.Write("<script>alert('success')</script>)");

        cmd.CommandText = "select max(pgid) from package";
        id = a.max_id(cmd);

        MultiView1.SetActiveView(View1);

        cmd.CommandText = "SELECT package.pgid, auditorium.aname,package.pgid, package.package,package.rate FROM auditorium INNER JOIN package ON auditorium.aid = package.pgid ";
        DataGrid1.DataSource = a.getdata(cmd);
        DataGrid1.DataBind();



 
        
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {

        MultiView1.SetActiveView(View2);
        i = Convert.ToInt32(e.Item.Cells[0].Text);
     DropDownList3.SelectedItem.Text= e.Item.Cells[1].Text;
        TextBox6.Text = e.Item.Cells[3].Text;
       
        

    }
   
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update package set package='" + DropDownList3.SelectedValue + "',rate='"+TextBox6.Text+"' where pgid='"+i+"' ";
        a.execute(cmd);
        Response.Write("<script>alert('updated')</script>)");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from package where pgid='" + i + "'";
        a.execute(cmd);
        Response.Write("<script>alert('deleted')</script>)");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}