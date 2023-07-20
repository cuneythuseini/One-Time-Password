using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        OleDbConnection oleDbConn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Web/Infos.accdb"));
        oleDbConn.Open();

        OleDbDataAdapter oleDbAdapter = new OleDbDataAdapter("Select * From TblRegistration", oleDbConn);
        DataTable dt = new DataTable();
        oleDbAdapter.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();

        oleDbConn.Close();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Length == 0 || TextBox1.Text == "ID")
        {
            Response.Write("<script>alert('Внесете го ID на лицето што треба да се ажурира.');</script>");
        }
        else
        {
            int id = Convert.ToInt32(TextBox1.Text);
            string connect = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Web/Infos.accdb"));

            OleDbConnection oleDbConn = new OleDbConnection(connect);
            oleDbConn.Open();

            OleDbCommand olDbComm = new OleDbCommand("SELECT *FROM TblRegistration where ID=@ID", oleDbConn);
            olDbComm.Parameters.Add("ID", OleDbType.Integer).Value = id;
            OleDbDataReader oleDbReader = olDbComm.ExecuteReader();



            if (oleDbReader.Read())
            {
                Panel1.Visible = true;
                TextBox2.Text = oleDbReader["Name"].ToString();
                TextBox3.Text = oleDbReader["LastName"].ToString();
                TextBox4.Text = oleDbReader["DayBirth"].ToString();
                TextBox5.Text = oleDbReader["Gender"].ToString();
                TextBox6.Text = oleDbReader["EMail"].ToString();
                TextBox7.Text = oleDbReader["PhoneNumber"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Записот не е пронајден...');</script>");
            }
            oleDbConn.Close();
            oleDbConn.Dispose();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text.Trim().Length == 0 || TextBox1.Text == "ID" || string.IsNullOrEmpty(TextBox1.Text))
        {
            Response.Write("<script>alert('Не може да се остават празни полиња. Пополнете ги сите полиња.');</script>");
        }
        else
        {
            int id = Convert.ToInt32(TextBox1.Text);
            string connect = ("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Web/Infos.accdb"));

            OleDbConnection oleDbConn = new OleDbConnection(connect);
            oleDbConn.Open();

            OleDbCommand oleDbCommand = new OleDbCommand("UPDATE TblRegistration SET Name='" + TextBox2.Text + "', LastName='" + TextBox3.Text + "',DayBirth='" + TextBox4.Text + "',Gender='" + TextBox5.Text + "',EMail='" + TextBox6.Text + "',PhoneNumber='" + TextBox7.Text + "' where ID= @ID", oleDbConn);
            oleDbCommand.Parameters.Add("ID", OleDbType.Integer).Value = id;
            int status = oleDbCommand.ExecuteNonQuery();

            if (status > 0)
            {
                Response.Write("<script>alert('Регистрацијата е успешно ажурирана...');</script>");
            }
            else
            {
                Response.Write("<script>alert('Не успеа да се ажурира записот...');</script>");
            }
            oleDbConn.Close();
            oleDbConn.Dispose();
            Response.Redirect("StudentInformation.Aspx");
        }
    }
}