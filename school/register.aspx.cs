using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class register : System.Web.UI.Page
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
        try
        {
            conn.Close();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login";
            SqlDataReader dr = cmd.ExecuteReader();
            int f = 0;
            while (dr.Read())
            {

                if (dr.GetValue(0).ToString().Equals(TextBox2.Text))
                {
                    if (dr.GetValue(1).ToString().Equals(TextBox3.Text))
                    {
                        f = 1;
                        break;
                    }
                }
            }
            if (f == 1)
            {
                Response.Write("Your login Id is already exist");
            }
            else
            {
                conn.Close();
                conn.Open();
                cmd.CommandText = "insert into login values('" + TextBox2.Text + "','" + TextBox3.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Register successfull')</script>");
            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}