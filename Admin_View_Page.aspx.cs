using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class Admin_View_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sessionuser = Convert.ToString(Session["jamansession"]);
            HttpCookie usercookie = Request.Cookies.Get("jamancookie");
            string CurrentUserCookie = usercookie["Name"];
            if(sessionuser != CurrentUserCookie)
            {
                Response.Redirect("Login_page.aspx");
            }

        }

        protected void Student_Information_Click_Button(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select * from [Admission_info_table]", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

            }
            
        }

        protected void Merit_List_Genarate_Button_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select TOP 15 [ID],[ApplicantName],[EmailAddress],[GPA] from [Admission_info_table] ORDER BY GPA DESC", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

            }
        }

        protected void Open_Admission_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Student_Info_Page.aspx");
        }
        protected void Payment_Processing_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment_Page.aspx");
        }

        protected void Delete_From_Merit_List_Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("Merit_List_Page.aspx");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("Login_Page.aspx");
        }
    }
}