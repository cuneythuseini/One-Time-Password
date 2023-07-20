using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


public partial class AddAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        if (TextBox2.Text == TextBox3.Text)
        {
            string conn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Web/Infos.accdb");
            OleDbConnection oldDConn = new OleDbConnection(conn);
            oldDConn.Open();

            string username = TextBox1.Text;
            string password = TextBox2.Text;


            OleDbCommand oleDbCommand = new OleDbCommand("insert into TBLADMIN(user_name,pass_word) values ('" + username + "','" + password + "')", oldDConn);
            int status = oleDbCommand.ExecuteNonQuery();

            if (status > 0)
            {
                Response.Write("<script>alert('Администраторот е успешно додаден...');</script>");
            }
            else
            {
                Response.Write("Не успеа да се додаде запис");
            }
            oldDConn.Close();
            oldDConn.Dispose();
            Response.Redirect("AddAdmin.Aspx");
        }
        else
        {
            Response.Write("<script>alert('Лозинките не се исти...');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminInformation.Aspx");
    }
}