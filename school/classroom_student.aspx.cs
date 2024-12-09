using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class classroom_student : System.Web.UI.Page
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
            cmd.CommandText = "select * from classroom ";
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetValue(0).ToString());
            }
        }
        conn.Close();
        
        if (!IsPostBack == true)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from student ";
            conn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                DropDownList2.Items.Add(dr.GetValue(0).ToString());
            }
        }
        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            //Save Records
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into class_room_student values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Save')</script>");
            SqlDataSource1.SelectCommand = "select * from class_room_student";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        //Clear TextBox
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        //Delete the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "delete from class_room_student where classroom_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Deleted')</script>");
            SqlDataSource1.SelectCommand = "select * from class_room_student";
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
            cmd.CommandText = "update class_room_student set student_id='" + TextBox2.Text + "' where classroom_id='" + TextBox1.Text + "' ";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated')</script>");
            SqlDataSource1.SelectCommand = "select * from class_room_student";
            GridView1.DataSourceID = "SqlDataSource1";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        //All-Search
        SqlDataSource1.SelectCommand = "select * from class_room_student";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        //Particular search
        SqlDataSource1.SelectCommand = "select * from class_room_student where classroom_id='" + TextBox1.Text + "'";
        GridView1.DataSourceID = "SqlDataSource1";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = DropDownList1.SelectedValue.ToString();
    }
    
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        TextBox2.Text = DropDownList2.SelectedValue.ToString();

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("reportclassroom_student.aspx");
    }
}