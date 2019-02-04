using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Admin_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Page.aspx");
        }

        protected void Applicant_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Page.aspx");
        }

        protected void Admission_Information_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admission_Information_Page.aspx");
        }

        protected void Click_For_Admission(object sender, EventArgs e)
        {
            Response.Redirect("Payment_Page.aspx");
        }
    }
}