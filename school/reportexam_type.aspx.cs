using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

public partial class reportexam_type : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "select * from exam_type";
        cmd.ExecuteNonQuery();
        SqlDataAdapter s = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        s.Fill(dt);
        ReportViewer1.LocalReport.DataSources.Clear();
        ReportDataSource rds = new ReportDataSource("DataSet1", dt);
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("rptexam_type.rdlc");
        ReportViewer1.LocalReport.DataSources.Add(rds);
        ReportViewer1.LocalReport.Refresh();
    }
}