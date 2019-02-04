using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {
            


           String name = U_name.Text;
            String pass = Password.Text;
            Session["jamansession"] = name;
            HttpCookie acookie = new HttpCookie("jamancookie");
            acookie.Values.Add("Name", name);
            HttpContext.Current.Response.AppendCookie(acookie);

            if (name == "saiful@gmail.com" && pass == "saiful")
            {
                Response.Redirect("Admin_View_Page.aspx");
            }
            else if (name == "miraj@gmail.com" && pass == "miraj")
            {
                Response.Redirect("Admin_View_Page.aspx");
            }
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select * from [Admission_info_table] where EmailAddress=@loginEmail", conn);
                cmd.Parameters.Add(new SqlParameter("@loginEmail", name));
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                if (reader[5].ToString() == name && reader[11].ToString() == pass)
                {
                    Response.Redirect("Student_View_Page.aspx?EmailAddress=" +name);
                }
                else
                {
                    string disp = "Wrong Password Input !!! Please check your password again";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert(' + disp + ');", true);
                }
            }
        }
    }
}