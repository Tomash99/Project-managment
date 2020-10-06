using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace test
{
    public partial class WebForm1 : System.Web.UI.Page
    {
      
        
        SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["EMR"].ConnectionString);
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
            GridView1.Visible = true;

        }

       

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void ExitButton_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Вхід.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("СтворенняНовоїКарточки.aspx");
        }
    }
}