using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class Student_View_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string sessionuser = Convert.ToString(Session["jamansession"]);
            HttpCookie usercookie = Request.Cookies.Get("jamancookie");
            string CurrentUserCookie = usercookie["Name"];
            if (sessionuser != CurrentUserCookie)
            {
                Response.Redirect("Login_page.aspx");
            }
        }

        protected void Registration_Button_Click(object sender, EventArgs e)
        {
            String name = Email.Text;
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select * from [Admission_info_table] where EmailAddress=@loginEmail", conn);
                cmd.Parameters.Add(new SqlParameter("@loginEmail", name));
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                if (reader[5].ToString() == name)
                {
                    Response.Redirect("Registration_Form_Page.aspx?EmailAddress=" + name);
                }
                else
                {
                    string disp = "Wrong Email Input !!! Please check your Email again";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert(' + disp + ');", true);

                }
            }
        }

        protected void Student_Info_Button_Click(object sender, EventArgs e)
        {
            String name = Email.Text;
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select * from [Admission_info_table] where EmailAddress=@loginEmail", conn);
                cmd.Parameters.Add(new SqlParameter("@loginEmail", name));
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                if (reader[5].ToString() == name)
                {
                    Response.Redirect("View_Student_Info_Page.aspx?EmailAddress=" + name);
                }
                else
                {
                    string disp = "Wrong Email Input !!! Please check your Email again";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert(' + disp + ');", true);

                }
            }
        }

        protected void Merit_Button_Click(object sender, EventArgs e)
        {
            String name = Email.Text;
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select TOP 15 [ID],[ApplicantName],[EmailAddress],[GPA] from [Admission_info_table] ORDER BY GPA DESC", conn);
                SqlDataReader reader = cmd.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();




                //reader.Read();
                //String id = reader[0].ToString();
                //String A_name = reader[1].ToString();
                //String email = reader[5].ToString();
                //String gpa = reader[3].ToString();
                //if (email == name)
                //{
                //    GridView1.DataSource = reader;
                //    GridView1.DataBind();
                //}

            }
        }

        protected void LogOut_Button_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Session.Clear();
            Response.Redirect("Login_Page.aspx");
        }
    }
}