<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="buystock.aspx.cs" Inherits="admin_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form class="text-left" runat="server">

        <%--<div class="content-wrapper">--%>
            <div class="container-full">
                <!-- Main content -->
                <section class="content">

                    <div class="row">
                        <div class="box">
                            <div class="box-body">
                                <div class="position-relative">
                                    <div class="me-auto">
                                        <h1 class="page-title text-center">BUY</h1>
                                    </div>
                                   
                                    <br />
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <div class="form-group text-center">
                                                    <label for="name" class="form-label">CHOOSE FOLIO</label>
                                                    <div class="input-group">
                                                        <%-- <input type="text" class="form-control" id="name" readonly>--%>
                                                        <%--    <asp:DropDownList ID="drop_folio" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="folioname" ></asp:DropDownList>--%>
                                                        <%-- <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT * FROM [foliomaster] WHERE ([userid] = @userid)">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>--%>
                                                       <%-- <asp:DropDownList ID="drop_folio" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="folioname" DataValueField="folioid"></asp:DropDownList>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT * FROM [foliomaster] WHERE ([userid] = @userid)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>--%>
                                                        <asp:DropDownList ID="drop_folio" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="folioname" DataValueField="folioname"></asp:DropDownList>
                                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT * FROM [foliomaster] WHERE ([userid] = @userid)">
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
                                                <div class="form-group text-center">
                                                    <label for="name" class="form-label">Date</label>
                                                    <div class="input-group">
                                                        <%-- <input type="text" class="form-control" id="name" readonly>--%>
                                                       <%-- <asp:TextBox ID="text_date" runat="server" class="form-control" placeholder="date" required> </asp:TextBox>--%>
                                                        <asp:TextBox ID="text_date" runat="server" class="form-control" placeholder="date" required></asp:TextBox>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <div class="form-group text-center">
                                                    <label for="name" class="form-label">StockName</label>
                                                    <div class="input-group">
                                                        <%-- <input type="text" class="form-control" id="name" readonly>--%>
                                                        <asp:TextBox ID="buy_stock" runat="server" class="form-control" placeholder="Stock name" required> </asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-3">
                                            <div class="mb-3">
                                                <div class="form-group text-center">
                                                    <label for="name" class="form-label">QTY</label>
                                                    <div class="input-group">
                                                        <%--<input type="number" class="form-control" id="qty">--%>
                                                        <asp:TextBox ID="txt_qty" runat="server" class="form-control" placeholder="Qty" required></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="mb-3">
                                                <div class="form-group text-center">
                                                    <label for="name" class="form-label">PRICE</label>
                                                    <div class="input-group">
                                                        <%--    <input type="number" class="form-control" id="price">--%>
                                                        <asp:TextBox ID="txt_price" runat="server" class="form-control" placeholder="Price" required></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>
                                    <br>

                                    <br>
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <div class="form-group text-center">
                                                    <%--     <button type="button" class="btn btn-danger me-1">
                                                  <i class="ti-trash"></i> BUY
                                                </button>--%>

                                                    <asp:Button ID="btn_buy"  class="btn btn-danger me-1" runat="server" Text="BUY" OnClick="btn_buy_Click" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- /.content -->
            </div>
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->

        <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
        <div class="control-sidebar-bg"></div>
    </form>

</asp:Content>

