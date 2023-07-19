<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="admin_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form class="text-left" runat="server">
      <%--  <div class="content-wrapper">--%>
            <div class="container-full">
                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <!-- <div class="col-xl-4 col-12"> -->
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="box">
                                    <div class="box-body">
                                        <div class="position-relative">
                                            <div class="me-auto">
                                                <h1 class="page-title text-center">ORDERS</h1>
                                            </div>
                                            <hr>
                                            <div class="me-auto">
                                                <h1 class="page-title text-center">EXECUTED ORDERS</h1>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <%-- <div class="dropdown" data-control="checkbox-dropdown">
                                                        <select class="selectpicker" multiple>
                                                            <option>A</option>
                                                            <option>B</option>
                                                            <option>C</option>
                                                        </select>

                                                    </div>--%>
                                                    <%-- <asp:DropDownList ID="DropDownList1" data-control="checkbox-dropdown" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="folioid" DataValueField="folioid"></asp:DropDownList>


                                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT [folioid] FROM [purchasestock] WHERE ([folioid] = @folioid)">
                                                        <SelectParameters>
                                                            <asp:SessionParameter SessionField="folioid" Name="folioid" Type="Int32"></asp:SessionParameter>
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>--%>
                                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="folioname" DataValueField="folioname"></asp:DropDownList>
                                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT [pdate], [bid], [stockname], [qty], [price], [total], [folioname] FROM [buymaster] WHERE ([userid] = @userid)">
                                                        <SelectParameters>
                                                            <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>

                                                    <div class="col-md-4">
                                                        <%--<button type="button" class="btn btn-primary-light me-1">
                                                    <i class="ti-right"></i>GO
                                                </button>--%>
                                                        <asp:Button ID="btn_go" runat="server" class="btn btn-primary-light me-1" Text="GO"  />
                                                    </div>
                                                </div>
                                                <div class="box">
                                                    <div class="box-body">
                                                        <div class="table-responsive">
                                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                                <HeaderTemplate>
                                                                    <table id="example" class="table table-lg invoice-archive col-12">
                                                                        <thead>
                                                                            <tr>
                                                                                <th>ID</th>
                                                                                <th>Purchase Date</th>
                                                                                <th>Stock Name</th>
                                                                                <th>Qty</th>
                                                                                <th>Price</th>
                                                                                <th>Total</th>
                                                                                <th>Folio Name</th>
                                                                            </tr>
                                                                        </thead>
                                                                </HeaderTemplate>

                                                                <ItemTemplate>

                                                                    <tr>
                                                                        <td><%#Eval("bid") %></td>
                                                                        <td><%#Eval("pdate") %></td>
                                                                        <td><%#Eval("stockname") %></td>
                                                                        <td><%#Eval("qty") %></td>
                                                                        <td><%#Eval("price") %></td>
                                                                        <td><%#Eval("total") %></td>
                                                                        <td><%#Eval("folioname") %></td>

                                                                    </tr>

                                                                </ItemTemplate>

                                                                <FooterTemplate>
                                                                   <%-- <tr>
                                                                       
                                                                        
                                                                        <td>    <asp:Label ID="lblTotal" runat="server" Text="TOTAL"></asp:Label></td> 
                                                                        <td> Total Profit:<%#Eval(totalprofit())%></td>
                                                                        </tr>--%>
                                                                    </table>                                           
                                                                </FooterTemplate>
                                                            </asp:Repeater>

                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </section>

            </div>


        </div>



        <div class="control-sidebar-bg"></div>

    </form>

</asp:Content>

