using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AM_v_booking_cancel : System.Web.UI.Page
{
    audi a= new audi();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from bookingreg where status='cancelled'";
            DataGrid1.DataSource = a.getdata(cmd);
            DataGrid1.DataBind();
        }
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {

    }
}