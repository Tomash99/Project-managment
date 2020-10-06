using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace test
{

    public partial class ОсобистаІнформаціяДляЛікаря : System.Web.UI.Page
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
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Chek (date,complaints,conclusion,doctor,patient,medical_centre,notes) VALUES ('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + DropDownList2.SelectedValue + "', '" + TextBox5.Text + "' )";
            //cmd.ExecuteNonQuery();
            con.Close();

            this.GridView2.DataBind();
            this.TextBox1.Text = string.Empty;
            this.TextBox2.Text = string.Empty;
            this.TextBox3.Text = string.Empty;
            this.TextBox4.Text = string.Empty;
            this.TextBox5.Text = string.Empty;
            this.DropDownList1.ClearSelection();
            this.DropDownList2.ClearSelection();
        }


        protected void GridView2_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Вхід.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("СтворенняНовоїКарточки.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ПереглядДляЛікаря.aspx");
        }
    }
}