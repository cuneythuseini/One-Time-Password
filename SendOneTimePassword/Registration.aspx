<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Регистрација</title>

    <!-- Icons font CSS-->
    <link href="registrationWeb/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="registrationWeb/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="registrationWeb/https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="registrationWeb/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="registrationWeb/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="registrationWeb/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Формулар за регистрација на студенти</h2>
                    <form method="POST" runat="server">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Име</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="input--style-4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Презиме</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="input--style-4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Датум на раѓање</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="TextBox3" runat="server" class="input--style-4" PlaceHolder ="дд.мм.гг"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Пол</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">
                                           <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="pol" Text="Маж"  />
                                            
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">
                                           
                                           <asp:RadioButton ID="RadioButton2" runat="server"  GroupName="pol" Text="Жена"  />
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Е-пошта</label>
                                    <asp:TextBox ID="TextBox4" runat="server" class="input--style-4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Телефонски број</label>
                                    <asp:TextBox ID="TextBox5" runat="server" class="input--style-4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="p-t-15">
                            <asp:Button ID="Button1" runat="server" Text="Зачувај" class="btn btn--radius-2 btn--blue" Width="195px" OnClick="Button1_Click"/>
                            <asp:Button ID="Button2" runat="server" Text="Избриши" class="btn btn--radius-2 btn--blue" Width="195px" OnClick="Button2_Click1"/>
                            <div style ="margin:15px 15px 15px 15px">
                                <asp:TextBox ID="TextBox6" runat="server" class="input--style-4" PlaceHolder ="Внесете го ID-бројот на лицето што сакате да го избришете" BackColor="#CCFF99"></asp:TextBox>
                            </div>
                            <asp:Button ID="Button3" runat="server" Text="Видете ги записите" class="btn btn--radius-2 btn--blue" Width="274px" OnClick="Button3_Click"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="registrationWeb/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="registrationWeb/vendor/select2/select2.min.js"></script>
    <script src="registrationWeb/vendor/datepicker/moment.min.js"></script>
    <script src="registrationWeb/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="registrationWeb/js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
