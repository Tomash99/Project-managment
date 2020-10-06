using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace test
{
    public partial class СтворенняНової_карточки : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SL034FT\SQLEXPRESS;Initial Catalog=EMR;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_ID"] != null)
            {
                //вивід на екран надпису з логіном 
                //Label1.Text = Session["User_ID"].ToString();
            }
            else
            {
                Response.Redirect("Вхід.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

            if (patient() == true)
            {
                Label2.Text = "Перевірте правильність заповнень";
                Label2.ForeColor = System.Drawing.Color.Red;


            }
            else
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Patient (Surname,Name,Father_name,Sex,Birthday,Blood,City,Street,House,Apartment,Telephone) VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "',  '" + TextBox5.Text + "','" + DropDownList1.SelectedValue + "', '" + TextBox7.Text + "', '" + TextBox8.Text + "', '" + TextBox9.Text + "', '" + TextBox10.Text + "', '" + TextBox6.Text + "')";
                cmd.ExecuteNonQuery();
                con.Close();

                this.TextBox1.Text = string.Empty;
                this.TextBox2.Text = string.Empty;
                this.TextBox3.Text = string.Empty;
                this.TextBox4.Text = string.Empty;
                this.TextBox5.Text = string.Empty;
                this.TextBox6.Text = string.Empty;
                this.TextBox7.Text = string.Empty;
                this.TextBox8.Text = string.Empty;
                this.TextBox9.Text = string.Empty;
                this.TextBox10.Text = string.Empty;
                Label2.Text = "Картка успішно додана";
                Label2.ForeColor = System.Drawing.Color.Green;

            }
        }

        private Boolean patient()
        {
            Boolean PAtient = false;
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["EMR"].ConnectionString);
            String myquery = "Select * from Patient where Surname = '" + TextBox1.Text + "' and Name = '" + TextBox2.Text + "' and Father_name = '" + TextBox3.Text + "' ";
            SqlCommand com2 = new SqlCommand();
            com2.CommandText = myquery;
            com2.Connection = con2;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = com2;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                PAtient = true;

            }
            con2.Close();

            return PAtient;
        }
    

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ПереглядДляЛікаря.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Вхід.aspx");
        }
    }
}