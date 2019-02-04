using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admission_System
{
    public partial class Payment_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ok_Button_Click(object sender, EventArgs e)
        {
            String Name = Box1.Text;
            String Acc_Num = Box2.Text;
            String Payment = Box3.Text;
            if (Box3.Text == "500")
            {
                SqlConnection conn = new SqlConnection("Server=localhost; " + "Database=Student_Information; " + "Integrated Security=true");
                conn.Open();
                using (conn)
                {
                    SqlCommand cmd = new SqlCommand("Insert into [Payment_Table](ApplicantName, DBBL, PaymentAmount) VALUES" + "(@Name, @Acc_Num, @Payment)", conn);

                    cmd.Parameters.Add(new SqlParameter("@Name", Name));
                    cmd.Parameters.Add(new SqlParameter("@Acc_Num", Acc_Num));
                    cmd.Parameters.Add(new SqlParameter("@Payment", Payment));
                    cmd.ExecuteNonQuery();
                }
            }
            else
            {
                string disp = "Please Pay 500 taka";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert1", "alert(' + disp + ');", true);

            }
        }
        
        protected void Click_For_Admission_Button(object sender, EventArgs e)
        {

            String dbbl = Box2.Text;
            if (Box1.Text != "" && Box2.Text != "" && Box3.Text == "500")
            {
                Response.Redirect("Admission_Form_Page.aspx?Account=" + dbbl);
            }
        }
    }
}