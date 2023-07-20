using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void clearAllAreas()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        TextBox5.Text = "";
        TextBox6.Text = "Внесете го ID-бројот на лицето што сакате да го избришете";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Length == 0 || TextBox2.Text.Trim().Length == 0 || TextBox3.Text.Trim().Length == 0
            || TextBox4.Text.Trim().Length == 0 || TextBox5.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Не може да се остават празни полиња. Пополнете ги сите полиња.');</script>");
        }
        else
        {
            string conn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Web/Infos.accdb");
            OleDbConnection oldDConn = new OleDbConnection(conn);
            oldDConn.Open();

            string name = TextBox1.Text;
            string lastName = TextBox2.Text;
            string birthDay = TextBox3.Text;
            string gender = "";

            if (RadioButton1.Checked == true)
            {
                gender = RadioButton1.Text;
            }
            else if (RadioButton2.Checked == true)
            {
                gender = RadioButton2.Text;
            }
            string email = TextBox4.Text;
            string phoneNumber = TextBox5.Text;

            OleDbCommand oleDbCommand = new OleDbCommand("insert into TblRegistration(Name,LastName,DayBirth,Gender,EMail,PhoneNumber) values ('" + name + "','" + lastName + "','" + birthDay + "','" + gender + "','" + email + "','" + phoneNumber + "')", oldDConn);
            int status = oleDbCommand.ExecuteNonQuery();

            if (status > 0)
            {
                Response.Write("<script>alert('Регистрацијата е успешно додадена...');</script>");
            }
            else
            {
                Response.Write("Не успеа да се додаде запис");
            }
            oldDConn.Close();
            oldDConn.Dispose();
            Response.Redirect("Registration.Aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (TextBox6.Text.Trim().Length == 0 || TextBox6.Text == "Внесете го ID-бројот на лицето што сакате да го избришете")
        {
            Response.Write("<script>alert(Ве молиме внесете го ID на лицето што треба да се избрише...');</script>");
        }
        else
        {
            string conn = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Web/Infos.accdb");
            OleDbConnection oledbConn = new OleDbConnection(conn);
            oledbConn.Open();

            int id = Convert.ToInt32(TextBox6.Text);
            OleDbCommand oleDbCommand = new OleDbCommand("delete from TblRegistration where ID=?", oledbConn);
            oleDbCommand.Parameters.Add("NoCustomer", OleDbType.Integer).Value = id;
            int status = oleDbCommand.ExecuteNonQuery();

            if (status > 0)
            {
                Response.Write("<script>alert('Записот е успешно избришана...');</script>");
            }
            else
            {
                Response.Write("<script>alert('Не успеа да се избрише записот...');</script>");
            }
            oledbConn.Close();
            oledbConn.Dispose();
            clearAllAreas();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentInformation.aspx");
    }
}