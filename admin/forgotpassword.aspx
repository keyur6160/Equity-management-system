<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="admin_forgotpassword" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from specie-admin-template.multipurposethemes.com/main/auth_user_pass.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 29 Apr 2023 14:35:20 GMT -->
<head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://specie-admin-template.multipurposethemes.com/images/favicon.ico">

    <title>STOCK</title>
  
	<!-- Vendors Style-->
	<%--<link rel="stylesheet" href="css/vendors_css.css">--%>
    <link href="main/css/vendors_css.css" rel="stylesheet" />
	  
	<!-- Style-->  
	<%--<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/skin_color.css">	--%>
    <link href="main/css/style.css" rel="stylesheet" />
    <link href="main/css/skin_color.css" rel="stylesheet" />
</head>

<body class="hold-transition theme-primary bg-img" style="background-image: url(../admin/images/auth-bg/bg-10.jpg)">
	
	<div class="container h-p100">
		<div class="row align-items-center justify-content-md-center h-p100">
			<form method="post" runat="server">
			<div class="col-12">
				<div class="row justify-content-center g-0">
					<div class="col-lg-5 col-md-5 col-12">						
						<div class="bg-white rounded10 shadow-lg">
							<div class="content-top-agile p-20 pb-0">
								<h3 class="mb-0 text-primary">Recover Password</h3>								
							</div>
							<div class="p-40">
								<form method="post">
									<div class="form-group">
										<div class="input-group mb-3">
											<span class="input-group-text bg-transparent"><i class="ti-email"></i></span>
											<%--<input type="email" class="form-control ps-15 bg-transparent" placeholder="Your Email">--%>
											<asp:TextBox ID="txt_email" class="form-control ps-15 bg-transparent" placeholder="Your Email" runat="server"></asp:TextBox>
										
										</div>
									</div>
									<br/>
											<asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
									  <div class="row">
										<div class="col-12 text-center">
										  <%--<button type="submit" class="btn btn-info margin-top-10">Reset</button>--%>
											<asp:Button ID="btn_submit" runat="server"  class="btn btn-info margin-top-10" Text="Submit" OnClick="btn_submit_Click" />
										</div>
										<!-- /.col -->
									  </div>
								</form>	
							</div>
						</div>
					</div>
				</div>
			</div>
				</form>
		</div>
	</div>	



	<!-- Vendor JS -->
<%--	<script src="js/vendors.min.js"></script>
	<script src="js/pages/chat-popup.js"></script>
    <script src="../assets/icons/feather-icons/feather.min.js"></script>	--%>

    <script src="main/js/vendors.min.js"></script>
    <script src="main/js/pages/chat-popup.js"></script>
    <script src="assets/icons/feather-icons/feather.min.js"></script>
</body>

<!-- Mirrored from specie-admin-template.multipurposethemes.com/main/auth_user_pass.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 29 Apr 2023 14:35:21 GMT -->
</html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>
