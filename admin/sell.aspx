<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="sell.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%-- <div class="content-wrapper">--%>
	  <div class="container-full">
		<!-- Main content -->
		<section class="content">			
			<div class="row">
                <div class="box">
                    <div class="box-body">
                        <div class="position-relative">
                            <div class="me-auto">
                                <h1 class="page-title text-center">SELL</h1>
                            </div>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-12">
                                        <form>
                                            <div class="input-group text-center">
                                            <input type="search" class="form-control" placeholder="Search" aria-label="Search">
                                            <div class="input-group-append">
                                                <button class="btn" type="submit" id="button-addon3"></button>
                                            </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>  
                            </div>
                            
                        <br>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <div class="form-group text-center">
                                            <label for="name" class="form-label">User Name</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="name" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3"></div>
                            </div>

                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <div class="form-group text-center">
                                            <label for="name" class="form-label">QTY</label>
                                            <div class="input-group">
                                                <input type="number" class="form-control" id="qty">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <div class="form-group text-center">
                                            <label for="name" class="form-label">PRICE</label>
                                            <div class="input-group">
                                                <input type="number" class="form-control" id="price">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <div class="form-group text-center">
                                            <label for="name" class="form-label">MARGIN</label>
                                                <div class="input-group">
                                                    <input type="number" class="form-control" id="price" readonly>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="mb-3">
                                        <div class="form-group text-center">
                                            <label for="name" class="form-label">CHARGES</label>
                                            <div class="input-group">
                                                <input type="number" class="form-control" id="price">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <div class="form-group text-center">
                                                <button type="button" class="btn btn-danger me-1">
                                                  <i class="ti-trash"></i> SELL
                                                </button>
                                                <button type="submit" class="btn btn-success">
                                                  <i class="ti-save-alt"></i> CANCEL
                                                </button>
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
  
</asp:Content>

