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
    public partial class UpdateCamp : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;
        SqlCommand cmd;
        string filename;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
             try
            {

                SqlConnection con = new SqlConnection(connStr);
                filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/images/" + filename));
                con.Open();

                cmd = new SqlCommand("UPDATE camp set date=@date,Time=@time,Address=@add,City=@city,Image=@image,Contact=@cont WHERE Name=@Name", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@date", Convert.ToDateTime(txtdate.Text));
                cmd.Parameters.AddWithValue("@time", Convert.ToDateTime(txttime.Text));
                cmd.Parameters.AddWithValue("@add", txtadd.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@image", "images/" + filename);
                cmd.Parameters.AddWithValue("@cont", txtcont.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Camp Updated Successfully...!!!');window,location='UpdateCamp.aspx';", true);
            }
            catch (Exception ae)
            {
                Label2.Text = "Not Added " + ae;
            }
            
        }
    }
}