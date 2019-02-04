using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class Registration_Form_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                String name = Request.QueryString["EmailAddress"];
                SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information;" + "Integrated Security=true");
                conn.Open();
                using (conn)
                {
                    //string email = (Request.QueryString["EmailAddress"]);
                    SqlCommand cmd = new SqlCommand("Select * from [Admission_info_table] where [EmailAddress]=@email", conn);
                    cmd.Parameters.Add(new SqlParameter("@email", name));
                    SqlDataReader reader = cmd.ExecuteReader();
                    reader.Read();
                    A_name.Text = reader[1].ToString();
                    email.Text = reader[5].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Name = A_name.Text;
            String D_Name = TextBox5.Text;
            String Semester = TextBox6.Text;
            String Email_add = email.Text;
            String course1 = TextBox7.Text;
            String course2 = TextBox9.Text;

            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Insert into [Registration_table](Student_Name,Email,Depertment,Semester,Course1,Course2) VALUES" + "(@Student_Name, @Email, @Depertment, @Semester, @Course1, @Course2)", conn);
                cmd.Parameters.Add(new SqlParameter("@Student_Name", Name));
                cmd.Parameters.Add(new SqlParameter("@Email", Email_add));
                cmd.Parameters.Add(new SqlParameter("@Depertment", D_Name));
                cmd.Parameters.Add(new SqlParameter("@Semester", Semester));
                cmd.Parameters.Add(new SqlParameter("@Course1", course1));
                cmd.Parameters.Add(new SqlParameter("@Course2", course2));
                cmd.ExecuteNonQuery();

            }
        }
    }
}
