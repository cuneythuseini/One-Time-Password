using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Net.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Length == 0 || TextBox2.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Не може да се остави празен простор...');</script>");
        }
        else
        {
            OleDbConnection oleDbConn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("Web/Infos.accdb"));

            oleDbConn.Open();
            OleDbCommand oleDbCommand = new OleDbCommand("Select * From TBLADMIN where user_name=@P1 AND pass_word=@P2", oleDbConn);
            oleDbCommand.Parameters.AddWithValue("@P1", TextBox1.Text);
            oleDbCommand.Parameters.AddWithValue("@P2", TextBox2.Text);

            OleDbDataReader dataReader = oleDbCommand.ExecuteReader();

            if (dataReader.Read())
            {
                Random r = new Random();
                string otp = r.Next(10001, 99999).ToString();
                Session["otp"] = otp;

                using (MailMessage message = new MailMessage("cuneythuseini7@gmail.com", TextBox1.Text))
                {
                    message.Subject = "Вашиот OTP - КОД ";
                    string otpMessage = "Испраќач: Џунејт Хусеини <br> " + "И-мејл: cuneythuseini7@gmail.com <br> " + "Otp код: <b>" + otp + "<br>";
                    message.Body = otpMessage.ToString();
                    message.IsBodyHtml = true;
                    SmtpClient smtpClient = new SmtpClient();
                    smtpClient.Host = "smtp.gmail.com";
                    smtpClient.EnableSsl = true;
                    NetworkCredential networkCred = new NetworkCredential("cuneythuseini7@gmail.com", "ajfxpgjchtlulshw");
                    smtpClient.UseDefaultCredentials = true;
                    smtpClient.Credentials = networkCred;
                    smtpClient.Port = 587;
                    smtpClient.Send(message);


                }
                oleDbConn.Close();
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                Response.Write("<script>alert('Корисничкото име или лозинката се неточни.Обидете се повторно.');</script>");
            }
            oleDbConn.Close();



        }


    }
}