<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="holdings.aspx.cs" Inherits="admin_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form method="post" runat="server">
    <section class="content">			
			<div class="row">
				<!-- <div class="col-xl-4 col-12"> -->
					<div class="box">
						<div class="box-body">
							<div class="position-relative">
                                <div class="me-auto">
                                     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
								    <h1 class="page-title text-center">HOLDING</h1>
                                </div>
                                 
                                    </div>
                                              </ContentTemplate>
                                    </asp:UpdatePanel>
								<div class="row">
									<div class="col-md-4">
										<%--<div class="dropdown" data-control="checkbox-dropdown">--%>
                                        <%--<asp:DropDownList ID="drop_folio" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="folioid" DataValueField="pid"></asp:DropDownList>--%>
                                        <asp:DropDownList ID="drop_List" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="folioname" DataValueField="folioname"></asp:DropDownList>
                                     
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT [bid], [stockname], [qty], [price], [total], [folioname] FROM [buymaster] WHERE ([userid] = @userid)">
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </div>
									</div>
									<div class="col-md-4">
										<%--<button type="button" class="btn btn-primary-light me-1">--%>
											<%--<i class="ti-right"></i> GO--%>
										<%--</button>--%>
                                        <asp:Button ID="btn_go" class="btn btn-primary-light me-1" runat="server" Text="GO" />
									</div>
                               
								</div>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">

                                    <HeaderTemplate>
                                        <table class="text-fade table">
                                            <thead>
                                                   <tbody>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>INSTRUMENT</th>
                                                    <th>QTY</th>
                                                    <th>PURCHASE PRICE</th>
                                                    <th>folio Name</th>
                                                    <th>P & L</th>
                                                </tr>
                                            </thead>
                                          
                                    </HeaderTemplate>
                                    <ItemTemplate>
                              
                                <tr>
                                         <td><%#Eval("bid")%></td>
                                          <td><%#Eval("stockname")%></td>
                                           <td><%#Eval("qty")%></td>
                                        <td><%#Eval("price")%></td>
                                        <td><%#Eval("folioname")%></td>
                                        <td><%#Eval("total")%></td>
                                                                              
                                      </tr>
                                      
                               </ItemTemplate>
                             
                               <FooterTemplate>
                                 </table>
                                   <div>
        <h4 style="text-align:right;"">Total P&L: <asp:Label  ID="lblTotalAmount" runat="server"  Text=""></asp:Label>
    </div>
                               </FooterTemplate>
                             </asp:Repeater>
                                <asp:Label ID="lblTotalAmount" runat="server" Text=""></asp:Label>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:StockMarketDBConnectionString2 %>' SelectCommand="SELECT [bid], [stockname], [qty], [price], [total], [folioname] FROM [buymaster] WHERE ([userid] = @userid)">
                                    <SelectParameters>
                                        <asp:SessionParameter SessionField="userid" Name="userid" Type="Int32"></asp:SessionParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</div>	
                        
						</div>
					</div>
				<!-- </div> -->
			</div>
		</section>
		</form>
</asp:Content>

