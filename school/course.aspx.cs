using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class course : System.Web.UI.Page
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
        if (!IsPostBack == true)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from grade ";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Close();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select courseid from keygen";
            SqlDataReader dr = cmd.ExecuteReader();
            String f = "";
            while (dr.Read())
            {
                f = dr.GetValue(0).ToString();
            }
            TextBox1.Text = "C" + f;
            HiddenField1.Value = f;


        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into course values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Save')</script>");
            SqlDataSource1.SelectCommand = "select * from course";
            GridView1.DataSourceID = "SqlDataSource1";
            //To update classid in keygen table
            conn.Close();
            conn.Open();
            int classid = int.Parse(HiddenField1.Value.ToString()) + 1;
            cmd.CommandText = "update keygen set courseid='" + classid + "'";
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Delete the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "delete from course where course_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Deleted')</script>");
            SqlDataSource1.SelectCommand = "select * from course";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //Update
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update course set name='" + TextBox2.Text + "', desc1='" + TextBox3.Text + "',grade_id='" + TextBox4.Text + "'  where course_id='" + TextBox1.Text + "' ";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated')</script>");
            SqlDataSource1.SelectCommand = "select * from course";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //All Search
        SqlDataSource1.SelectCommand = "select * from course";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular search
        try
        {
            conn.Close();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from course where course_id='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr.GetValue(0).ToString();
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox3.Text = dr.GetValue(2).ToString();
                TextBox4.Text = dr.GetValue(3).ToString();
               
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox4.Text = DropDownList1.SelectedValue.ToString();

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("reportcourse.aspx");
    }
}