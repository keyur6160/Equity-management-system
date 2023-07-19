<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="folio.aspx.cs" Inherits="admin_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="hold-transition light-skin sidebar-mini theme-primary ">
    <form class="text-left" runat="server">
       <%-- <div class="content-wrapper">--%>
            <div class="container-full">
                <section class="content">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="card text-center">
                                <div class="card-body">
                                    <!-- <img src="../../../images/avatar/avatar-13.png" class="bg-light w-100 h-100 rounded-circle avatar-lg img-thumbnail" alt="profile-image"> -->

                                    <h5 class="mb-4 text-uppercase ">Create Folio</h5>
                                    <%--  <h5 class="mb-4 text-uppercase">Folio List</h5>--%>
                                    <hr>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="row">
                                                <div class="col-md-3"></div>
                                                <div class="col-md-6">
                                                    <div class="mb-3">
                                                        <div class="form-group">
                                                            <label for="folioname" class="form-label">Folio Name</label>
                                                            <div class="input-group">
                                                            
                                                                <asp:TextBox ID="txt_folioname" class="form-control" runat="server" required></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-3"></div>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <div class="form-group">
                                                    <label for="first" class="form-label">First Person Name</label>
                                                    <div class="input-group">
                                                     
                                                        <asp:DropDownList ID="fisrtperson" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="holdername" ></asp:DropDownList>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT * FROM [holder] WHERE ([userid] = @userid)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <div class="form-group">
                                                    <label for="second" class="form-label">Second Person Name</label>
                                                    <div class="input-group">
                                                        <asp:DropDownList ID="secondperson" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="holdername" ></asp:DropDownList>
                                                       <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT * FROM [holder] WHERE ([userid] = @userid)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <div class="form-group">
                                                    <label for="third" class="form-label">Third Person Name</label>
                                                    <div class="input-group">
                                                    
                                                        <asp:DropDownList ID="thirdperson" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="holdername" ></asp:DropDownList>
                                                       <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT * FROM [holder] WHERE ([userid] = @userid)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                        <%--<asp:DropDownList ID="thirdperson" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="folioname" DataValueField="folioid"></asp:DropDownList>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT * FROM [foliomaster] WHERE ([userid] = @userid)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>

                                    <div class="text-center">
                                        <%-- <button type="submit" class="btn btn-primary mt-2"><i class="fa fa-user-plus" aria-hidden="true"></i></i> Add Folio</button>--%>
                                        <asp:Button ID="btn_folio" class="btn btn-primary mt-2" runat="server" Text="add folio" OnClick="btn_folio_Click" />
                                    </div>


                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="content">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="card text-center">
                                <div class="card-body">

                                    <h5 class="mb-4 text-uppercase">Folio List</h5>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="box">
                                                <div class="box-body">
                                                    <div class="table-responsive">
                                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource4">
                                                            <HeaderTemplate>
                                                                <table class="text-fade table">
                                                                    <thead class="bg-primary">
                                                                        <tr>
                                                                            <th>Folioid</th>
                                                                            <th>Folio Name</th>
                                                                            <th>Firstholdername</th>
                                                                            <th>Secondholdername</th>
                                                                            <th>Thirdholdername</th>
                                                                            <th>Action</th>

                                                                        </tr>
                                                                    </thead>
                                                            </HeaderTemplate>
                                                            <ItemTemplate>

                                                                <tr>
                                                                    <td><%#Eval("folioid")%></td>
                                                                    <td><%#Eval("folioname")%></td>
                                                                    <td><%#Eval("firstholdername")%></td>
                                                                    <td><%#Eval("secondholdername")%></td>
                                                                    <td><%#Eval("thirdholdername")%></td>
                                                                  
                                                                    <td>
                                                                        <a href='editfolio.aspx?folioid=<%#Eval("folioid") %>' class="text-fade hover-pimary"><i class="align-middle" data-feather="edit-2"><i class="fa fa-edit fa-2x" data-feather="edit-2"></i></i></a>
                                                                        <a href='deletefolio.aspx?folioid=<%#Eval("folioid") %>' class="text-fade hover-primary"><i class="align-middle" data-feather="trash"><i class="fa fa-trash fa-2x" data-feather="trash"></i></i></a>
                                                                    </td>
                                                                </tr>
                                                            </ItemTemplate>
                                                            <FooterTemplate>
                                                                </table>
                                                            </FooterTemplate>
                                                        </asp:Repeater>



                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT [folioid], [folioname], [firstholdername], [secondholdername], [thirdholdername] FROM [foliomaster] WHERE ([userid] = @userid)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
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
      <%--  </div>--%>
        <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
        <%--<div class="control-sidebar-bg">--%>

      <%--  </div>--%>
    </form>
     </div>
</asp:Content>

