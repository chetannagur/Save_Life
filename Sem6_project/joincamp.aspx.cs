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
    public partial class joincamp : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["blooddb"].ConnectionString;
        SqlCommand cmd,cmd1;
        int a;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connStr);

                con.Open();
                string sql = "select Name,Date,Time,Address,City,Image,Contact from camp Where Name='"+ Request.QueryString["name"]+"'";
                cmd = new SqlCommand(sql, con);
                dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                   
                    lblname.Text = dr[0].ToString();
                    lbldate.Text = dr[1].ToString();
                    lbltime.Text = dr[2].ToString();
                    lbladd.Text = dr[3].ToString();
                    lblcity.Text = dr[4].ToString();
                    img1.ImageUrl = dr[5].ToString();
                    lblcont.Text = dr[6].ToString();
                    
                    a = 1;



                }
                else
                {

                }
                dr.Close();
                if (a == 1)
                {
                    sql = "select Name,Email,Address,Mobile,BloodG from Registration where Email='" + Session["Email"] + "'";
                    cmd = new SqlCommand(sql, con);
                    dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        
                        
                        lbluname.Text = dr[0].ToString();
                        lblemail.Text = dr[1].ToString();
                        lbluadd.Text = dr[2].ToString();
                        lblcontact.Text = dr[3].ToString();
                        lblbloodg.Text = dr[4].ToString();
                        a = 0;



                    }
                    else
                    {
                        
                    }
                    dr.Close();
                }
            }
            
        

        protected void Button2_Click(object sender, EventArgs e)
        {



            
           
            
            SqlConnection con = new SqlConnection(connStr);
            con.Open();
            DataTable dt = new DataTable();
            dt.Clear();
            dt.Columns.Add("Date");


            String myquery = "select Date from camp Where Name='" + Request.QueryString["name"] + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = myquery;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
        
            da.Fill(dt1);
            foreach (DataRow dr1 in dt1.Rows)
            {
                DataRow dr = dt.NewRow();
                dr["Date"]=dr1["Date"].ToString();
                DateTime d1 = Convert.ToDateTime(DateTime.Now.ToString());
                DateTime d2 = Convert.ToDateTime(dr["Date"].ToString());
                if (d1 >= d2)
                {
                    Label1.Visible = true;
                }
                else
                {
                    try
                    {
                        cmd1 = new SqlCommand("insert into joincamp values(@cname,@date,@time,@add,@city,@cont,@uname,@uemail,@uadd,@ucont,@bloodg)", con);
                        cmd1.Parameters.AddWithValue("@cname", lblname.Text);
                        cmd1.Parameters.AddWithValue("@date", Convert.ToDateTime(lbldate.Text));
                        cmd1.Parameters.AddWithValue("@time", lbltime.Text);
                        cmd1.Parameters.AddWithValue("@add", lbladd.Text);
                        cmd1.Parameters.AddWithValue("@city", lblcity.Text);
                        cmd1.Parameters.AddWithValue("@cont", lblcont.Text);
                        cmd1.Parameters.AddWithValue("@uname", lbluname.Text);
                        cmd1.Parameters.AddWithValue("@uemail", lblemail.Text);
                        cmd1.Parameters.AddWithValue("@uadd", lbluadd.Text);
                        cmd1.Parameters.AddWithValue("@ucont", lblcontact.Text);
                        cmd1.Parameters.AddWithValue("@bloodg", lblbloodg.Text);

                        cmd1.ExecuteNonQuery();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert ('Camp Joined Successfully...!!!');window,location='Home.aspx';", true);
                    }
                    catch (Exception ae)
                    {
                        Label1.Visible = true;
                        Label1.Text = "Not Added " + ae;
                    }
                }
            }
               
        }
    }
}