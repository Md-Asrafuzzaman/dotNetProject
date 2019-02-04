using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class Merit_List_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                SqlCommand cmd = new SqlCommand("Select TOP 15 [ID],[ApplicantName],[EmailAddress],[GPA] from [Admission_info_table] ORDER BY GPA DESC ", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();

            }

        }

        protected void Delete_button_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                string id = Box1.Text;
                SqlCommand cmd = new SqlCommand("Delete from [Admission_info_table] where ID = @email", conn);
                cmd.Parameters.Add(new SqlParameter("@email", id));
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("Admin_View_Page.aspx");
        }

        protected void Delete_All_button_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
               
                SqlCommand cmd = new SqlCommand("Delete  from [Admission_info_table]", conn);
                cmd.ExecuteNonQuery();
            }

           Response.Redirect("Admin_View_Page.aspx");
        }
    }
}
