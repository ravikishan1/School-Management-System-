﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
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
        //Particular search
        try
        {
            conn.Close();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login";
            SqlDataReader dr = cmd.ExecuteReader();
            int f=0;
            while (dr.Read())
            {
               
               if(dr.GetValue(0).ToString().Equals(TextBox1.Text))
               {
                    if(dr.GetValue(1).ToString().Equals(TextBox2.Text))
                    {
                        f=1;
                        break;
                    }
               }
            }
            if(f==1)
            {
                Response.Redirect("MyMenu.aspx");
            }
              
            else 
            {
                Response.Write("<script>alert('Id or password are wrong')</script>");
            }
           
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}