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
    public partial class RequestBlood : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-58BQKP3H;Initial Catalog=BloodBankDB;Integrated Security=True");
        SqlCommand cmd;
        string email, name;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblcurrentdate.Text = DateTime.Now.ToString("yyyy/MM/dd");
            string email2= Session["Email"].ToString();
            con.Open();
            cmd = new SqlCommand("select * from Registration Where Email = @email", con);
            cmd.Parameters.AddWithValue("@email", email2);
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                email = myReader["Email"].ToString();
                name = myReader["Name"].ToString();
                
            }
           
            txtName.Text = name;
            txtEmail1.Text = email;
            con.Close();

        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd2;
            cmd2 = new SqlCommand("insert into Request values(@name,@email,@bg,@hos,@dr,@cname,@cnumber,@rdate,@cdate)", con);
            cmd2.Parameters.AddWithValue("@name", name);
            cmd2.Parameters.AddWithValue("@email", email);
            cmd2.Parameters.AddWithValue("@bg", txtBloodG1.Text);
            cmd2.Parameters.AddWithValue("@hos", txtHospital1.Text);
            cmd2.Parameters.AddWithValue("@dr", txtDr1.Text);
            cmd2.Parameters.AddWithValue("@cname",txtCName1.Text);
            cmd2.Parameters.AddWithValue("@cnumber", txtNo1.Text);
            cmd2.Parameters.AddWithValue("@rdate", Convert.ToDateTime(txtDate1.Text));
            cmd2.Parameters.AddWithValue("@cdate", Convert.ToDateTime(lblcurrentdate.Text));



            cmd2.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Request Added Successfully...!!!');window,location='Home.aspx';", true);
        }
    }
}