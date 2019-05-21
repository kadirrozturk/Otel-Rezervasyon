<%@ Page Title="" Language="C#" MasterPageFile="~/OverConfident.Master" AutoEventWireup="true" CodeBehind="galeri.aspx.cs" Inherits="Otel_Rezervasyon.galeri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Content Başlangıç-->
    <div class="mg-page-title parallax">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>Otel Galeri</h2>
						<p>Tüm odalarımızın detaylı resimleri.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="mg-gallery-page">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mg-filter">
							<div id="mg-filter">
								<fieldset>
									<label class="btn btn-dark btn-main"><input type="radio" name="filter" value="all" checked="checked">Hepsi</label>
									<label class="btn btn-dark"><input type="radio" name="filter" value="classic"/>Standart</label>
									<label class="btn btn-dark"><input type="radio" name="filter" value="deluxe"/>Full</label>
									<label class="btn btn-dark"><input type="radio" name="filter" value="royal"/>Full+Full</label>
								</fieldset>
							</div>
						</div>

						<div class="row" id="mg-grid">
							<figure class="col-md-3 mg-gallery-item" data-groups='["classic"]'>
								<a href="images/room-1.png" data-lightbox-gallery="rooms"><img src="images/room-1.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["deluxe"]'>
								<a href="images/room-2.png" data-lightbox-gallery="rooms"><img src="images/room-2.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["royal"]'>
								<a href="images/room-3.png" data-lightbox-gallery="rooms"><img src="images/room-3.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["classic"]'>
								<a href="images/room-4.png" data-lightbox-gallery="rooms"><img src="images/room-4.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["deluxe"]'>
								<a href="images/room-1.png" data-lightbox-gallery="rooms"><img src="images/room-5.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["classic"]'>
								<a href="images/room-2.png" data-lightbox-gallery="rooms"><img src="images/room-6.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["royal"]'>
								<a href="images/room-3.png" data-lightbox-gallery="rooms"><img src="images/room-7.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["royal"]'>
								<a href="images/room-3.png" data-lightbox-gallery="rooms"><img src="images/room-8.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["classic"]'>
								<a href="images/room-3.png" data-lightbox-gallery="rooms"><img src="images/room-9.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["royal"]'>
								<a href="images/room-3.png" data-lightbox-gallery="rooms"><img src="images/room-10.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["deluxe"]'>
								<a href="images/room-3.png" data-lightbox-gallery="rooms"><img src="images/room-11.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
							<figure class="col-md-3 mg-gallery-item" data-groups='["classic"]'>
								<a href="images/room-3.png" data-lightbox-gallery="rooms"><img src="images/room-12.png" class="img-responsive" alt="" /><span class="mg-gallery-overlayer"><i class="fa fa-search-plus"></i></span></a>
							</figure>
						</div>
					</div>
				</div>
			</div>
		</div>

     <!-- Content Bitiş-->
</asp:Content>
