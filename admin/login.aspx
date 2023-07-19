<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from specie-admin-template.multipurposethemes.com/main/auth_login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 29 Apr 2023 14:34:07 GMT -->
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://specie-admin-template.multipurposethemes.com/images/favicon.ico">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>STOCK</title>
  
	<!-- Vendors Style-->
	<%--<link rel="stylesheet" href="css/vendors_css.css">--%>
    <link href="main/css/vendors_css.css" rel="stylesheet" />
	<!-- Style-->  
	<%--<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/skin_color.css">--%>	
	<link href="main/css/style.css" rel="stylesheet" />
    <link href="main/css/style_rtl.css" rel="stylesheet" />

</head>
	
<body class="hold-transition theme-primary bg-img" style="background-image: url(../admin/images/auth-bg/bg-9.jpg)">
	
	<div class="container h-p100">
		<div class="row align-items-center justify-content-md-center h-p100">	
			
			<div class="col-12">
				<div class="row justify-content-center g-0">
					<div class="col-lg-5 col-md-5 col-12">
						<div class="bg-white rounded10 shadow-lg">
							<div class="content-top-agile p-20 pb-0">
								<h2 class="text-primary">Let's Get Started</h2>
								<p class="mb-0">Sign in to continue to Stock.</p>							
							</div>
							<div class="p-40">
								<form method="post" runat="server">
									<div class="form-group">
										<div class="input-group mb-3">
											<span class="input-group-text bg-transparent"><i class="ti-user"></i></span>
											<%--<input type="text" class="form-control ps-15 bg-transparent" placeholder="Username">--%>
											<asp:TextBox ID="txt_loginuser" runat="server" class="form-control ps-15 bg-transparent" required placeholder="Email" ></asp:TextBox>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group mb-3">
											<span class="input-group-text  bg-transparent"><i class="ti-lock"></i></span>
										<%--	<input type="password" class="form-control ps-15 bg-transparent" placeholder="Password">--%>
											<asp:TextBox ID="txt_loginpassword" runat="server" class="form-control ps-15 bg-transparent" required type="password" placeholder="Password"></asp:TextBox>
										</div>
									</div>
									  <div class="row">
										<div class="col-6">
										  <div class="checkbox">
											<input type="checkbox" id="basic_checkbox_1" >
											<label for="basic_checkbox_1">Remember Me</label>
										  </div>
										</div>
										<!-- /.col -->
										<div class="col-6">
										 <div class="fog-pwd text-end">
											<a href="forgotpassword.aspx" class="hover-warning"><i class="fa fa-lock"></i> Forgot Password?</a><br>
										  </div>
										</div>
										<!-- /.col -->
										<div class="col-12 text-center">
										  <%--<button type="submit" class="btn btn-danger mt-10">SIGN IN</button>--%>
											<asp:Button ID="signin" runat="server" Text="signin" class="btn btn-danger mt-10" OnClick="signin_Click"/>
										</div>
										  <div class="col-12 text-center">
											  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
										  </div>
										<!-- /.col -->
									  </div>
								</form>	
								<div class="text-center">
									<p class="mt-15 mb-0">Don't have an account? <a href="register.aspx" class="text-warning ms-5">Sign Up</a></p>
								</div>	
							</div>						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Vendor JS -->
	<%--<script src="js/vendors.min.js"></script>
	<script src="js/pages/chat-popup.js"></script>
    <script src="../assets/icons/feather-icons/feather.min.js"></script>--%>
    <script src="main/js/vendors.min.js"></script>
    <script src="main/js/pages/chat-popup.js"></script>
    <script src="assets/icons/feather-icons/feather.min.js"></script>
</body>

<!-- Mirrored from specie-admin-template.multipurposethemes.com/main/auth_login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 29 Apr 2023 14:34:07 GMT -->
</html>
