using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class View_Student_Info_Page : System.Web.UI.Page
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
                    M_name.Text = reader[2].ToString();
                    F_name.Text = reader[3].ToString();
                    C_number.Text = reader[4].ToString();
                    Email.Text = reader[5].ToString();
                    Present.Text = reader[6].ToString();
                    Permanent.Text = reader[7].ToString();
                    HSC.Text = reader[8].ToString();
                    SSC.Text = reader[9].ToString();
                    Create.Text = reader[11].ToString();
                    Confirm.Text = reader[11].ToString();
                }
            }
        }

        protected void Update_Click_Button(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
            conn.Open();
            using (conn)
            {
                String email = Email.Text;
                String Name = A_name.Text;
                String M_Name = M_name.Text;
                String F_Name = F_name.Text;
                String Contuct = C_number.Text;
                String Pre_Address = Present.Text;
                String Create_pass = Create.Text;
                String Confirm_pass = Confirm.Text;
                int abc = String.Compare(Create_pass, Confirm_pass);
                    if (abc == 0 && Confirm_pass != "")
                    {
                        SqlCommand cmd = new SqlCommand("Update [Admission_info_table] SET ApplicantName=@Name,MotherName=@M_Name,FatherName=@F_Name,ContuctNumber=@Contuct,PresentAddress=@Pre_Address,Password=@Confirm_pass Where EmailAddress=@email", conn);
                        cmd.Parameters.Add(new SqlParameter("@Name", Name));
                        cmd.Parameters.Add(new SqlParameter("@M_Name", M_Name));
                        cmd.Parameters.Add(new SqlParameter("@F_Name", F_Name));
                        cmd.Parameters.Add(new SqlParameter("@Contuct", Contuct));
                        cmd.Parameters.Add(new SqlParameter("@Pre_Address", Pre_Address));
                        cmd.Parameters.Add(new SqlParameter("@Confirm_pass", Confirm_pass));
                        cmd.Parameters.Add(new SqlParameter("@email", email));
                    cmd.ExecuteNonQuery();
                    }
            }
            Response.Redirect("Login_Page.aspx");
        }
    }
}