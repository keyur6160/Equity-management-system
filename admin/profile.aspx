<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="admin_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form method="post" runat="server">
        <%-- <div class="content-wrapper">--%>
        <div class="container-full">
            <!-- Main content -->
            <section class="content">
                <div class="row">
                              
                          
                                <!-- Profile Image -->
                                <div class="box bg-transparent no-border">
                                    <div class="box-body box-profile">
                                        <%-- <img class="rounded img-fluid mx-auto d-block max-w-150" src="../images/1.jpg" alt="User profile picture">--%>
                                        <asp:Image ID="userphoto" runat="server" class="rounded img-fluid mx-auto d-block max-w-150" />
                                        <%--	  <h3 class="profile-username text-center mb-0"><i class="fa fa-mobile"></i>	Johen Mical</h3>--%>
                                        <h3 class="profile-username text-center mb-0">
                                            <asp:Label ID="lblname" runat="server" Text=""></asp:Label></h3>
                                        <h4 class="text-center mt-0">
                                            <asp:Label ID="lblemail" runat="server" Text=""></asp:Label></h4>
                                        <%--<h4 class="text-center mt-0"><i class="fa fa-envelope-o me-10"></i>	jhone.mical@yahoo.com</h4>--%>
                                    </div>


                                </div>

                                </div>
				   
				
				

                    <div class="box">
                        <div class="box-header with-border">

                            
                                <h3 class="box-title">Personal details</h3>
                        </div>
                               
                        <!-- /.box-header -->

                        <div class="box-body">

                            <div class="row">

                                <div class="col-12">
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">USER NAME</label>
                                        <div class="col-sm-10">
                                            <%-- <input class="form-control" type="text" placeholder="YOUR NAME">--%>
                                            <asp:TextBox ID="txtuname" class="form-control" type="text" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <!-- </div> -->

                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">PAN</label>
                                    <div class="col-sm-10">
                                        <%--<input class="form-control" type="text" placeholder="YOUR PAN">--%>
                                        <asp:TextBox ID="txt_pan" runat="server" class="form-control" type="text" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">EMAIL</label>
                                    <div class="col-sm-10">
                                        <%--<input class="form-control" type="email" placeholder="YOUR EMAIL">--%>
                                        <asp:TextBox ID="txt_email" class="form-control" type="text" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">PHONE</label>
                                    <div class="col-sm-10">
                                        <%--	<input class="form-control" type="tel" placeholder="+91 1234567899">--%>
                                        <asp:TextBox ID="txt_mobile" class="form-control" type="text" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">GENDER</label>
                                    <div class="col-sm-10">

                                        <div class="demo-radio-button">
                                            <%--<input name="gender" type="radio" id="male" value="Male">
										<label for="male">MALE</label>
										<input name="gender" type="radio" id="female" value="Female">
										<label for="female">FEMALE</label>--%>
                                           <%-- <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" ReadOnly="true" />
                                            <asp:--%><%--RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" ReadOnly="true" />--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">UPLOAD PHOTO</label>
                                    <div class="col-sm-10">
                                        <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                                        <%--  <input class="form-control" type="file" id="photo">--%>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"></label>
                                    <div class="col-sm-10 text-center">
                                        <%--<button type="submit" class="btn btn-warning">SUBMIT</button>--%>
                                        <asp:Button ID="btn_update" runat="server" class="btn btn-warning" Text="UPDATE" OnClick="btn_update_Click" />
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
                                </div>
                </div>
                             
                                
                           
                        <div>
                        </div>
            </section>
       
                </div>


       
        <div class="control-sidebar-bg"></div>
    </form>

</asp:Content>

