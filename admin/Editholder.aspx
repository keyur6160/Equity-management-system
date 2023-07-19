<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Editholder.aspx.cs" Inherits="admin_Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

       <form class="text-left" runat="server">


        <div class="content-wrapper">

            <div class="container-full">
                <section class="content">

                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="card text-center">
                                <div class="card-body">
                                    <!-- <img src="../../../images/avatar/avatar-13.png" class="bg-light w-100 h-100 rounded-circle avatar-lg img-thumbnail" alt="profile-image"> -->

                                    <h5 class="mb-4 text-uppercase">Edit Holder</h5>
                                    <hr>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">HOLDER NAME</label>
                                                <div class="col-sm-10">
                                                    <%--<input class="form-control" type="text" placeholder="HOLDER NAME">--%>
                                                    <asp:TextBox ID="txtholder" class="form-control" placeholder="HOLDER NAME" runat="server"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="text-center">
                                                <%-- <button type="button" class="btn btn-primary-light mt-2"><i class="fa fa-ban"></i>Cancel</button>
                                                <button type="submit" class="btn btn-primary-light mt-2"><i class="fa fa-user-plus"></i>Add Holder</button>--%>
                                                <asp:Button ID="btn_cancel" class="btn btn-primary-light mt-2" runat="server" Text="Cancel"  />
                                                <asp:Button ID="btnedit" runat="server" class="btn btn-primary-light mt-2" Text="Edit" OnClick="btnedit_Click"  />
                                               
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <div class="container-full">

                <section class="content">

                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="card text-center">
                                <div class="card-body">
                                    <!-- <img src="../../../images/avatar/avatar-13.png" class="bg-light w-100 h-100 rounded-circle avatar-lg img-thumbnail" alt="profile-image"> -->

                                    <h5 class="mb-4 text-uppercase">Holder List</h5>
                                    <hr>

                                    <div class="row">

                                        <div class="col-md-12">
                                            <div class="box">
                                                <div class="box-body">

                                                    <div class="table-responsive">

                                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                            <HeaderTemplate>
                                                                <table class="text-fade table">
                                                                    <thead class="bg-primary">
                                                                        <tr>
                                                                            <th>Holder Id</th>
                                                                            <th>Holder Name</th>
                                                                            <th>Action</th>
                                                                        </tr>
                                                                    </thead>
                                                            </HeaderTemplate>



                                                            <ItemTemplate>

                                                                <tr>

                                                                    <td><%#Eval("holderid")%></td>
                                                                    <td><%#Eval("holdername") %></td>
                                                                    <td><a href='Editholder.aspx?holderid=<%#Eval("holderid") %>' class="text-fade hover-primary"><i class="fa fa-edit fa-2x" data-feather="edit-2"></i></a>
                                                                        <a href='Deleteholder.aspx?holderid=<%#Eval("holderid") %>' class="text-fade hover-primary"><i class="fa fa-trash fa-2x" data-feather="trash"></i></a></td>

                                                                </tr>
                                                            </ItemTemplate>

                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>
                                                        </asp:Repeater>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString %>' SelectCommand="SELECT * FROM [holder] WHERE ([userid] = @userid)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter SessionField="userid" DefaultValue="1" Name="userid" Type="Int32"></asp:SessionParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>

                                    </div>



                                </div>
                            </div>
                        </div>
                    </div>

                </section>


            </div>
        </div>


    </form>
</asp:Content>

