<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content">			
			<div class="row">
				<div class="col-xl-4 col-12">
					<div class="box">
						<div class="box-body">
							<div class="position-relative">
								<iframe src="https://widget.coinlib.io/widget?type=full_v2&amp;theme=light&amp;cnt=9&amp;pref_coin_id=1505&amp;graph=yes" width="100%" height="586px" scrolling="auto" marginwidth="0" marginheight="0" frameborder="0" border="0" style="border:0;margin:0;padding:0;" class="lv"></iframe>
								
								<iframe src="https://widget.coinlib.io/widget?type=full_v2&amp;theme=dark&amp;cnt=9&amp;pref_coin_id=1505&amp;graph=yes" width="100%" height="586px" scrolling="auto" marginwidth="0" marginheight="0" frameborder="0" border="0" style="border:0;margin:0;padding:0;" class="dv"></iframe>
							</div>							
						</div>
					</div>
				</div>
			</div>
		</section>
</asp:Content>

