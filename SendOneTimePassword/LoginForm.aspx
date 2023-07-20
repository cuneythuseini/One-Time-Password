<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="DataForm" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Verify</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="otpPage/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="otpPage/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="otpPage/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="otpPage/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="otpPage/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="otpPage/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="otpPage/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="otpPage/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="otpPage/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="otpPage/css/util.css">
	<link rel="stylesheet" type="text/css" href="otpPage/css/main.css">
<!--===============================================================================================-->
</head>
<body>

	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('otpPage/images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" runat="server">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Формулар за верификација
					</span>

					

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<!--<input class="input100" type="password" name="pass" placeholder="Password"> -->
                        <asp:TextBox ID="TextBox1" class="input100" placeholder="Внесете го вашиот OTP код" TextMode="Password" runat="server"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					

					<div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" class="login100-form-btn" Text="Влез" OnClick="Button1_Click" />
				
					</div>

			
				</form>
			</div>
		</div>
	</div>

	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="otpPage/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="otpPage/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="otpPage/vendor/bootstrap/js/popper.js"></script>
	<script src="otpPage/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="otpPage/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="otpPage/vendor/daterangepicker/moment.min.js"></script>
	<script src="otpPage/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="otpPage/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="otpPage/js/main.js"></script>

</body>
</html>