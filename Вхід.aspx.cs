using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace test
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["EMR"].ConnectionString);

            myConnection.Open();

            String query = "select count(*) from Doctor where Login ='" + TextBox1.Text.Trim() + "' and Password = '" + TextBox2.Text + "'";

            SqlCommand command = new SqlCommand(query, myConnection);

            int DoctorExists = int.Parse(command.ExecuteScalar().ToString());

            myConnection.Close();


            if (DoctorExists > 0)
            {
                Session["User_ID"] = TextBox1.Text;
                Response.Redirect("ПереглядДляЛікаря.aspx");
            }
            else
            {
               Label1.Text = "Неправильний логін або пароль";
            }
        }
    }
}