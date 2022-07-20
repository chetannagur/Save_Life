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
    public partial class Request : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-58BQKP3H;Initial Catalog=BloodBankDB;Integrated Security=True");
        SqlCommand cmd;
        string email, bg, name, address, mobile, url, city;
        protected void Page_Load(object sender, EventArgs e)
        {
           lbldate.Text = DateTime.Now.ToString("yyyy/MM/dd");
           string email2= Session["Email"].ToString();
            con.Open();
            cmd = new SqlCommand("select * from Registration Where Email = @email", con);
            cmd.Parameters.AddWithValue("@email", email2);
            SqlDataReader myReader;
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                email = myReader["Email"].ToString();
                mobile = myReader["Mobile"].ToString();
                name = myReader["Name"].ToString();
                bg = myReader["BloodG"].ToString();
                address = myReader["Address"].ToString();
                url = myReader["Image"].ToString();
                city = myReader["City"].ToString();
                
            }
            Image1.ImageUrl = url;
            Image1.Width = 100;
            Image1.Height = 100;
            txtName.Text = name;
            txtBG.Text = bg;
            txtEmail.Text = email;
            txtMobile.Text = mobile;
            txtAdd.Text = address;
           
            txtCity.Text = city;
            con.Close();

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand cmd2;
            cmd2 = new SqlCommand("insert into Donation values(@name,@email,@mobile,@am,@bg,@add,@city,@image,@Date)", con);
            cmd2.Parameters.AddWithValue("@name", name);
            cmd2.Parameters.AddWithValue("@email", email);
            cmd2.Parameters.AddWithValue("@mobile", mobile);
            cmd2.Parameters.AddWithValue("@am", Txtmob2.Text);
            cmd2.Parameters.AddWithValue("@bg", bg);
            cmd2.Parameters.AddWithValue("@add", address);
            cmd2.Parameters.AddWithValue("@city", city);
            cmd2.Parameters.AddWithValue("@image", url);
            cmd2.Parameters.AddWithValue("@Date", Convert.ToDateTime(lbldate.Text));



            cmd2.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Request Added Successfully...!!!');window,location='Home.aspx';", true);
        }
    }
}