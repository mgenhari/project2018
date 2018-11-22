using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AM_view_booking_req_aprv_rejt : System.Web.UI.Page
{
    audi a = new audi();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT bookingreg.bid, user_reg.name, bookingreg.fr_date, bookingreg.to_date, bookingreg.time, package.package, bookingreg.total_amt FROM bookingreg INNER JOIN user_reg ON bookingreg.uid = user_reg.uid INNER JOIN package ON bookingreg.pkg_id = package.pgid and bookingreg.aid=" + Session["id"] + "";
            DataGrid2.DataSource = a.getdata(cmd);
            DataGrid2.DataBind();

            cmd.CommandText = "SELECT hour_booking.hid, user_reg.name, hour_booking.date, hour_booking.start_time, hour_booking.end_time, hour_booking.amount FROM hour_booking INNER JOIN user_reg ON hour_booking.uid = user_reg.uid and hour_booking.aid=" + Session["id"] + "";
            DataGrid3.DataSource = a.getdata(cmd);
            DataGrid3.DataBind();
            MultiView1.SetActiveView(View1);
        }
 }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
}