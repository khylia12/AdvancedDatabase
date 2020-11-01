using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Threading;

namespace AdvancedDatabase2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Accounts; Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Login where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                Thread.Sleep(5);
                Label1.Text = "Login Successfull...";
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Label1.Text = "Login Unsuccessfull...";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        
    }
}