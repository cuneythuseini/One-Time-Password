using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class DataForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == Session["otp"].ToString())
        {
            Response.Write("<script>alert('Вашиот Otp е успешно потврден...');</script>");
            Response.Redirect("Registration.aspx");
        }
        else
        {
            Response.Write("<script>alert('Вашиот Otp е неважечки...');</script>");
        }

    }
}