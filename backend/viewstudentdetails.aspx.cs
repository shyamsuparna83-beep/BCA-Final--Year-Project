using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class viewstudentdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("data source=.\\sqlexpress;initial catalog=form;persist security info=True; Integrated Security = SSPI");
        string str = "Select * from formdetails";
        SqlCommand cmd = new SqlCommand(str, con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gv1.DataSource = ds.Tables[0];
        gv1.DataBind();

    }
}