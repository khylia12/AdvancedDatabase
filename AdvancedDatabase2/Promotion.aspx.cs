using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdvancedDatabase2
{
    public partial class Promotion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkifJewexists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0C5T5JD\SQLEXPRESS; Initial Catalog=Advance_Database_Project1; Integrated Security=True;");
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("Promotion_Demotion", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Emp_id", Emp_ID.Text.Trim());
                    cmd.Parameters.AddWithValue("@Emp_type", EmpType.Text.Trim());
                    cmd.Parameters.AddWithValue("@DOB", DOB.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", Address.Text.Trim());
                    cmd.Parameters.AddWithValue("@Name", Name.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Item updated successfully.');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Vehicle ID');</script>");
            }
        }
        bool checkifJewexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0C5T5JD\SQLEXPRESS; Initial Catalog=Advance_Database_Project1; Integrated Security=True;");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Employee1 where Emp_id='" + Emp_ID.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        protected void Gobutton(object sender, EventArgs e)
        {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0C5T5JD\SQLEXPRESS; Initial Catalog=Advance_Database_Project1; Integrated Security=True;");
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from Employee1 where Emp_id='" + Emp_ID.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        Emp_ID.Text = dt.Rows[0]["Emp_id"].ToString();
                        EmpType.Text = dt.Rows[0]["Emp_Type"].ToString();
                        DOB.Text = dt.Rows[0]["DOB"].ToString();
                        Address.Text = dt.Rows[0]["Address"].ToString();
                        Name.Text = dt.Rows[0]["Name"].ToString();

                }
                    else
                    {
                        Response.Write("<script>alert('Invalid Employee ID');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
        }
    }
}