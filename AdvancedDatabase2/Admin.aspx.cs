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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Customers_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateVPandBP.aspx");
        }

        protected void Promotion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Promotion.aspx");
        }

        protected void Used_Items_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpComm.aspx");
        }

        protected void UpdateSalary(object sender, EventArgs e)
        {
            Response.Redirect("UpdateSalary.aspx");
        }

        protected void CountJew(object sender, EventArgs e)
        {
            Response.Redirect("CountJew.aspx");
        }

        protected void UpdInven(object sender, EventArgs e)
        {
            Response.Redirect("UpdInven.aspx");
        }
    }
}