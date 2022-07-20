using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
namespace Sem6_project
{
    public partial class campreport : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from camp", con);
            da.Fill(ds);
            ReportDocument rpt = new ReportDocument();
            rpt.Load(Server.MapPath("~/CrystalReport3.rpt"));
            rpt.SetDataSource(ds.Tables["Table"]);
            CrystalReportViewer1.ReportSource = rpt;
            rpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Camp Information");
        }
    }
}