<%@ Page Title="" Language="C#" MasterPageFile="~/OverConfident.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Otel_Rezervasyon.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Content Başlangıç-->
    <div class="mg-page-title parallax">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>Bizimle İletişime Geçin</h2>
						<p>Fikir ve önerilerinizi bizimle paylaşın.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="mg-page">
			<div class="container">
				<div class="row">
					
					<div class="col-md-5">
						<h2 class="mg-sec-left-title">E-Mail Gönder</h2>
						<form class="clearfix">
							<div class="mg-contact-form-input">
								<label for="full-name">Ad Soyad</label>
								<input type="text" class="form-control" id="full-name"/>
							</div>
							<div class="mg-contact-form-input">
								<label for="email">E-Mail</label>
								<input type="text" class="form-control" id="email"/>
							</div>
							<div class="mg-contact-form-input">
								<label for="subject">Konu</label>
								<input type="text" class="form-control" id="subject"/>
							</div>
							<div class="mg-contact-form-input">
								<label for="subject">Mesaj</label>
								<textarea class="form-control" id="subject" rows="5"></textarea>
							</div>
							<input type="submit" class="btn btn-dark-main pull-right" value="Gönder"/>
						</form>
					</div>
					<div class="col-md-7">
						<h2 class="mg-sec-left-title">Adresimiz</h2>
						<p>Bilge Adam </p>
						<ul class="mg-contact-info">
							<li><i class="fa fa-map-marker"></i> Deneme mah. Test sok. No:1    Bakırköy / ISTANBUL </li>
							<li><i class="fa fa-phone"></i> +90(555)000 00 00</li>
							<li><i class="fa fa-envelope"></i> <a href="mailto:#">Overconfident@gmail.com</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

         <!-- Content Bitiş-->
</asp:Content>
