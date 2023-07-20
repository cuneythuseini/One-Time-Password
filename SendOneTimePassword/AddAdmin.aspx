<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="AddAdmin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    background-color: #04AA6D;
                }

        .active {
            background-color: #04AA6D;
        }
    </style>
	<title>Add Admin</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="addAdmin/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="addAdmin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="addAdmin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="addAdmin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="addAdmin/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="addAdmin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="addAdmin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="addAdmin/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="addAdmin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="addAdmin/css/util.css">
	<link rel="stylesheet" type="text/css" href="addAdmin/css/main.css">
<!--===============================================================================================-->
</head>
<body>

   
        
        

	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('addAdmin/images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Формулар за додавање администратор
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" runat="server">
                    
     


					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                        <asp:TextBox ID="TextBox1" runat="server" class="input100" PlaceHolder ="Е-Пошта"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
                        <asp:TextBox ID="TextBox2" runat="server" class="input100" PlaceHolder="Лозинка" TextMode="Password"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

                    <div class="wrap-input100 validate-input" data-validate="Enter password">
                        <asp:TextBox ID="TextBox3" runat="server" class="input100" PlaceHolder="Потврди Лозинката" TextMode="Password"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
                        <asp:Button ID="Button1" runat="server" Text="Додади" class="login100-form-btn" OnClick="Button1_Click1" />
                        <asp:HyperLink NavigateUrl='AdminInformation.Aspx' ID="HyperLink2" runat="server" class="login100-form-btn">Администратори</asp:HyperLink></a></li>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="addAdmin/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="addAdmin/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="addAdmin/vendor/bootstrap/js/popper.js"></script>
	<script src="addAdmin/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="addAdmin/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="addAdmin/vendor/daterangepicker/moment.min.js"></script>
	<script src="addAdmin/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="addAdmin/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="addAdmin/js/main.js"></script>

</body>
</html>
