<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="admin_register" %>


<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from specie-admin-template.multipurposethemes.com/main/auth_register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 29 Apr 2023 14:35:19 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://specie-admin-template.multipurposethemes.com/images/favicon.ico">

    <title>STOCK</title>

    <!-- Vendors Style-->
    <%--<link rel="stylesheet" href="../admin/css/vendors_css.css">
    --%>
    <link href="main/css/vendors_css.css" rel="stylesheet" />
    <!-- Style-->
    <%--<link rel="stylesheet" href="../admin/css/style.css">
	<link rel="stylesheet" href="../admin/css/skin_color.css">	--%>
    <link href="main/css/skin_color.css" rel="stylesheet" />
    <link href="main/css/style.css" rel="stylesheet" />
</head>

<body class="hold-transition theme-primary bg-img" style="background-image: url(../admin/images/auth-bg/bg-12.jpg)">

    <div class="container h-p100">
        <div class="row align-items-center justify-content-md-center h-p100">

            <div class="col-12">
                <div class="row justify-content-center g-0">
                    <div class="col-lg-5 col-md-5 col-12">
                        <div class="bg-white rounded10 shadow-lg">
                            <div class="content-top-agile p-20 pb-0">
                                <h2 class="text-primary">REGISTER A NEW USER</h2>
                            </div>
                            <div class="p-40">
                                <form method="post" runat="server">
                                    <div class="form-group">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text bg-transparent"><i class="ti-user"></i></span>
                                           <%-- <input type="text" class="form-control ps-15 bg-transparent" placeholder="Full Name">--%>
                                            <asp:TextBox ID="txtuname"  class="form-control ps-15 bg-transparent" placeholder="Full Name" required AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                          
                                            </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text bg-transparent"><i class="ti-mobile"></i></span>
                                          <%--  <input type="text" class="form-control ps-15 bg-transparent" placeholder="Mobile No">--%>
                                          <asp:TextBox ID="txtmobile"  class="form-control ps-15 bg-transparent" placeholder="Mobile number" required runat="server"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text bg-transparent"><i class="ti-credit-card"></i></span>
                                           <%-- <input type="text" class="form-control ps-15 bg-transparent text-uppercase" placeholder="Pan Card">--%>
                                      <asp:TextBox ID="txtpancard"  class="form-control ps-15 bg-transparent text-uppercase" placeholder="PAN Card" required runat="server"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text bg-transparent"><i class="ti-email"></i></span>
                                            <%--<input type="email" class="form-control ps-15 bg-transparent" placeholder="Email">--%>
                                <asp:TextBox ID="txtemail"  class="form-control ps-15 bg-transparent" placeholder="Email" required runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text bg-transparent"><i class="ti-lock"></i></span>
                                            <%--<input type="password" class="form-control ps-15 bg-transparent" placeholder="Password">--%>
                                              <asp:TextBox ID="txtpassword"  type="password" class="form-control ps-15 bg-transparent" placeholder="Password" required runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-3">

                                            <%--<input type="file" class="form-control ps-15 bg-transparent">--%>
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control ps-15 bg-transparent"/>
                                            <asp:Label ID="lblimg" runat="server" text=""></asp:Label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="mb-3">
                                                <div class="form-group">
                                                    <fieldset>  
                                                       <%-- <input name="group2" type="radio" id="male" value="Yes">--%><asp:RadioButton ID="RadioButton1" runat="server" Text="Male" groupname="gender"/>
                                                      <%--  <label for="male">Male</label>--%>
                                                        <%--<input name="group2" type="radio" id="female" value="No">--%>
                                                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" groupname="gender" />
                                                     <%--   <label for="female">Female</label>--%>
                                                    </fieldset>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 text-center">
                                            <%--<button type="submit" class="btn btn-info margin-top-10">SIGN IN</button>--%>
                                            <asp:Button ID="btn_submit" runat="server" Text="Sign Up" class="btn btn-info margin-top-10" OnClick="btn_submit_Click"/>
                                        </div>
                                        <!-- /.col -->
                                    </div>
                                </form>
                                <div class="text-center">
                                    <p class="mt-15 mb-0">Already have an account?<a href="login.aspx" class="text-danger ms-5"> Sign In</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Vendor JS -->
    <%--	<script src="/admin/js/vendors.min.js"></script>--%>
    <script src="main/js/pages/chat-popup.js"></script>
    <%--<script src="/admin/js/pages/chat-popup.js"></script>--%>
    <script src="main/js/vendors.min.js"></script>
    <%--<script src="../admin/assets/icons/feather-icons/feather.min.js"></script>	--%>
    <script src="assets/icons/feather-icons/feather.min.js"></script>

</body>
</html>
