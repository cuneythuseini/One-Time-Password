<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!doctype html>
<html lang="en">
  <head>
  	<title>One Time Password</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/web/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/web/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="web/css/style.css">

	</head>
	<body class="img js-fullheight" style="background-image: url(web/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Информациска Безбедност - One Time Password - (OTP) </h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Страница за најавување</h3>
		      	        <form id="form1" runat="server">
                              
		      		<div class="form-group">
		      			<!--<input type="text" class="form-control" placeholder="Username" required> -->
                        
                        
                        <asp:TextBox ID="TextBox1" class="form-control" runat="server" PlaceHolder ="Внесете го вашиот корисничко име"></asp:TextBox>
		      		</div>

                 <div class="form-group">
	            	<!--<button type="submit" class="form-control btn btn-primary submit px-3">Испрати OTP</button> -->
                     <!--<asp:Button ID="Button1" class="form-control btn btn-primary submit px-3" runat="server" Text="Испрати OTP" OnClick="Button1_Click" /> -->
	            </div>
                 


    
	            <div class="form-group">
	              <!--<input id="password-field" type="password" class="form-control" placeholder="Внесете го вашиот OTP број" required> -->
                   <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Внесете го вашиот лозинка" TextMode="Password"></asp:TextBox>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	            	<!--<button type="submit" class="form-control btn btn-primary submit px-3">Верифицирај</button> -->
                    <asp:Button ID="Button2" class="form-control btn btn-primary submit px-3" runat="server" Text="Влез" OnClick="Button2_Click" />
	            </div>
       


	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Запомни ме
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#" style="color: #fff">Ја заборави лозинката?</a>
								</div>
	            </div>
	                    </form>
	          <p class="w-100 text-center">&mdash; Или најавете се со &mdash;</p>
	          <div class="social d-flex text-center">
	          	<a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
	          	<a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>




