using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class Admission_Form_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void Submit_button_Click(object sender, EventArgs e)
        {

                    String Name = A_name.Text;
                    String M_Name = M_name.Text;
                    String F_Name = F_name.Text;
                    String Contuct = C_number.Text;
                    String Email_add = Email.Text;
                    String Pre_Address = Present.Text;
                    String Per_Address = Permanent.Text;
                    Double hsc = Convert.ToDouble(HSC.Text);
                    Double ssc = Convert.ToDouble(SSC.Text);
                    Double gpa = hsc + ssc;
                    String Grade = Convert.ToString(gpa);
                    String Create_pass = Create.Text;
                    String Confirm_pass = Confirm.Text;
                    int abc = String.Compare(Create_pass, Confirm_pass);
                    if (abc == 0 && Confirm_pass != "")
                    {
                        //string cs = ConfigurationManager.ConnectionStrings["DbCS"].ConnectionString;

                        SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
                        conn.Open();
                        using (conn)
                        {
                            SqlCommand cmd = new SqlCommand("Insert into [Admission_info_table](ApplicantName,MotherName,FatherName,ContuctNumber,EmailAddress,PresentAddress,PermanentAddess,SSC,HSC,GPA,Password) VALUES" + "(@Name, @M_Name, @F_Name, @Contuct, @Email_add, @Pre_Address, @Per_Address, @ssc, @hsc, @Grade, @Confirm_pass)", conn);

                            cmd.Parameters.Add(new SqlParameter("@Name", Name));
                            cmd.Parameters.Add(new SqlParameter("@M_Name", M_Name));
                            cmd.Parameters.Add(new SqlParameter("@F_Name", F_Name));
                            cmd.Parameters.Add(new SqlParameter("@Contuct", Contuct));
                            cmd.Parameters.Add(new SqlParameter("@Email_add", Email_add));
                            cmd.Parameters.Add(new SqlParameter("@Pre_Address", Pre_Address));
                            cmd.Parameters.Add(new SqlParameter("@Per_Address", Per_Address));
                            cmd.Parameters.Add(new SqlParameter("@ssc", ssc));
                            cmd.Parameters.Add(new SqlParameter("@hsc", hsc));
                            cmd.Parameters.Add(new SqlParameter("@Grade", Grade));
                            cmd.Parameters.Add(new SqlParameter("@Confirm_pass", Confirm_pass));
                            cmd.ExecuteNonQuery();

                        }

                    }
                    Response.Redirect("Login_Page.aspx");
         }
    }

}
