using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace Sem6_project
{
    public partial class addstock1 : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connStr);

                con.Open();

                cmd = new SqlCommand("insert into Stock1 values(@City,@ap,@an,@bp,@bn,@abp,@abn,@op,@on)", con);
                cmd.Parameters.AddWithValue("@City", txtcity.Text);
                cmd.Parameters.AddWithValue("@ap", txtApos.Text);
                cmd.Parameters.AddWithValue("@an", txtAneg.Text);
                cmd.Parameters.AddWithValue("@bp", txtBpos.Text);
                cmd.Parameters.AddWithValue("@bn", txtBneg.Text);
                cmd.Parameters.AddWithValue("@abp", txtABpos.Text);
                cmd.Parameters.AddWithValue("@abn", txtABneg.Text);
                cmd.Parameters.AddWithValue("@op", txtOpos.Text);
                cmd.Parameters.AddWithValue("@on", txtOneg.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Stock Added Successfully...!!!');window,location='addstock1.aspx';", true);
            }
            catch (Exception ae)
            {
                Label2.Text = "Not Added "+ae;
            }
        }

       
    }
}