<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="watchlist.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
	  <div class="container-full">
		<!-- Main content -->
		<section class="content">			
			<div class="row">
				<div class="box">
					<div class="box-body">
						<div class="position-relative">
							<h1 class="text-center">WATCHLIST</h1>
							<hr>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label text-center">SEARCH</label>
								<div class="col-sm-10">
								  <input class="form-control" type="search" placeholder="Search Stock">
								</div>
							</div>
							<table id="example" class="table table-lg invoice-archive text-center">
								<thead>
									<tr>
										<th>ID</th>
										<th>COMPANY</th>
										<th>PRICE</th>
										<th>ACTION</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>01</th>
										<th>TATA</th>
										<th>+100</th>
										<th>
										<button type="button" class="btn btn-danger me-1">DELETE</button>
										</th>
									</tr>
									<tr>
										<th>02</th>
										<th>ZOMATO</th>
										<th>-100</th>
										<th>
											<button type="button" class="btn btn-danger me-1">DELETE</button>
										</th>
									</tr>
									<tr>
										<th>03</th>
										<th>YES BANK</th>
										<th>+100</th>
										<th>
											<button type="button" class="btn btn-danger me-1">DELETE</button>
											</th>
									</tr>
								</tbody>
							</table>
                            
						</div>							
					</div>
				</div>
			</div>
		</section>
		<!-- /.content -->
	  </div>
  
</asp:Content>

