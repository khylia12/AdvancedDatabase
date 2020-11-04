using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdvancedDatabase2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(string.IsNullOrEmpty((string)Session["role"]))
                    {
                        adminlogbutton.Visible = false;
                        LinkButton1.Visible = true;
                    }
                else if (Session["role"].Equals("admin"))
                {
                    adminlogbutton.Visible = true;
                    LinkButton1.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void Adminlog(object sender, EventArgs e)
        {
            Response.Redirect("Login.Aspx");
        }

        protected void AdminNav(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void AdminNas(object sender, EventArgs e)
        {
            Response.Redirect("HELLO.aspx");
        }
    }
}