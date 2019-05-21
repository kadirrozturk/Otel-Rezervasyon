<%@ Page Title="" Language="C#" MasterPageFile="~/OverConfident.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Otel_Rezervasyon._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- İçerik Genel Başlangıç -->
    <!-- Slider Başlangıç -->
    <div id="mega-slider" class="carousel slide " data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#mega-slider" data-slide-to="0" class="active"></li>
            <li data-target="#mega-slider" data-slide-to="1"></li>
            <li data-target="#mega-slider" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active beactive">
                <img src="images/slide-4.png" alt="...">
                <div class="carousel-caption">
                    <img src="images/stars.png" alt="">
                    <h2>OverConfident Otel'e Hoşgeldiniz</h2>
                    <p>En rahat ve En lüx odalar</p>
                </div>
            </div>
            <div class="item">
                <img src="images/slide-2.png" alt="...">
                <div class="carousel-caption">
                    <img src="images/stars.png" alt="">
                    <h2>Evinizde Hissettirir</h2>
                    <p>Ev rahatlığı sunan odalar.</p>
                </div>
            </div>
            <div class="item">
                <img src="images/slide-3.png" alt="...">
                <div class="carousel-caption">
                    <img src="images/stars.png" alt="">
                    <h2>Mükkemmel Yemekler</h2>
                    <p>En iyi yemekler.</p>
                </div>
            </div>
        </div>
        <!-- Slider Bitiş -->

        <!-- BİRİNCİ KISIM-->

        <!-- Rezevasyon Başlangıç -->
        <a class="left carousel-control" href="#mega-slider" role="button" data-slide="prev"></a>
        <a class="right carousel-control" href="#mega-slider" role="button" data-slide="next"></a>
    </div>

    <div class="mg-book-now">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h2 class="mg-bn-title">Oda Arama <span class="mg-bn-big">Değer & Uygunluk</span></h2>
                </div>
                <div class="col-md-9">
                    <div class="mg-bn-forms">
                        <div class="row">
                            <div class="col-md-3 col-xs-6">
                                <!--  <div class="input-group date mg-check-in">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div> -->
                                <asp:TextBox ID="txtGirisTarih" CssClass="form-control" TextMode="Date" runat="server" placeholder="Giris Tarihi"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" EnableClientScript="true" runat="server" ControlToValidate="txtGirisTarih" ErrorMessage="Boş Bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <!-- </div>-->
                            <div class="col-md-3 col-xs-6">
                                <!--    <div class="input-group date mg-check-out">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>-->
                                <asp:TextBox ID="txtCikisTarih" CssClass="form-control" TextMode="Date" runat="server" placeholder="Çıkış Tarihi"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" EnableClientScript="true" runat="server" ControlToValidate="txtCikisTarih" ErrorMessage="Boş Bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <!--</div>-->
                            <div class="col-md-3">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <asp:DropDownList ID="ddlKisi" AutoPostBack="true" CssClass="ddlDrop" runat="server" OnSelectedIndexChanged="ddlKisi_SelectedIndexChanged" placeholder="Kişi">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                        </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" EnableClientScript="true" runat="server" ControlToValidate="ddlKisi" ErrorMessage="Boş Bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-xs-6">
                                        <asp:TextBox runat="server" ID="txtOda" TextMode="Number" CssClass="form-control" min="0" Max="10" placeholder="Oda" />
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" EnableClientScript="true" runat="server" ControlToValidate="txtOda" ErrorMessage="Boş Bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="btnRezervasyonYap" CssClass="btn btn-main btn-block" runat="server" Text="Rezervasyon Yap" OnClick="Goster" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Rezevasyon Bitiş -->

    <!-- İKİNCİ KISIM -->

    <!-- İçerik-1 Başlangıç -->
    <div class="mg-best-rooms">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mg-sec-title">
                        <h2>En Seçkin Odalarımız</h2>
                        <p>Müşterilerimiz tarafından seçilen en iyi odalar</p>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <figure class="mg-room">
                                <img src="images/room-1.png" alt="img11" class="img-responsive">
                                <figcaption>
                                    <h2>Standart</h2>
                                    <div class="mg-room-rating"><i class="fa fa-star"></i>5.00</div>
                                    <div class="mg-room-price">200₺</div>
                                    <p>En lüx standart odalar OverConfident Hotel'de.</p>
                                    <a href="#" class="btn btn-link">Daha Fazla <i class="fa fa-angle-double-right"></i></a>
                                    <a href="#" class="btn btn-main">Standart Oda</a>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-4">
                            <figure class="mg-room">
                                <img src="images/room-2.png" alt="img11" class="img-responsive">
                                <figcaption>
                                    <h2>Full</h2>
                                    <div class="mg-room-rating"><i class="fa fa-star"></i>5.00</div>
                                    <div class="mg-room-price">300₺</div>
                                    <p>En lüx full odalar OverConfident Hotel'de.</p>
                                    <a href="#" class="btn btn-link">Daha Fazla <i class="fa fa-angle-double-right"></i></a>
                                    <a href="#" class="btn btn-main">Full</a>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-4">
                            <figure class="mg-room">
                                <img src="images/room-3.png" alt="img11" class="img-responsive">
                                <figcaption>
                                    <h2>Full + Full</h2>
                                    <div class="mg-room-rating"><i class="fa fa-star"></i>5.00</div>
                                    <div class="mg-room-price">600₺</div>
                                    <p>En lüx full+full odalar OverConfident Hotel'de.</p>
                                    <a href="#" class="btn btn-link">Daha Fazla <i class="fa fa-angle-double-right"></i></a>
                                    <a href="#" class="btn btn-main">Full+Full</a>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- İçerik-1 Bitiş -->

    <!-- ÜÇÜNCÜ KISIM -->

    <!-- İçerik-2 Başlangıç -->
    <div class="mg-about parallax">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <h2 class="mg-sec-left-title">Over Confident Hotel Hakkında</h2>
                    <p>2017'den beri piyasadaki en tarz ve en lüx hotel.</p>
                </div>
                <div class="col-md-5">
                </div>
            </div>
        </div>
    </div>
    <!-- İçerik-2 Bitiş -->

    <!-- DÖRDÜNCÜ KISIM-->

    <!-- İçerik-3 Başlangıç -->
    <div class="mg-features">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mg-sec-title">
                        <h2>Otel Tesisleri</h2>
                        <p>Müşterilerimiz tarafından seçilen en iyi odalar</p>


                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="mg-feature">
                                <div class="mg-feature-icon-title">
                                    <i class="fp-ht-receptionist"></i>
                                    <h3>24-saat resepsiyon</h3>
                                </div>
                                <p>24 saat boyunca aktif resepsiyon ekibi</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mg-feature">
                                <div class="mg-feature-icon-title">
                                    <i class="fa fa-cogs"></i>
                                    <h3>Oda Servisi</h3>
                                </div>
                                <p>En Kaliteli oda servisi hizmeti</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mg-feature">
                                <div class="mg-feature-icon-title">
                                    <i class="fa fa-car"></i>
                                    <h3>Araç Kiralama</h3>
                                </div>
                                <p>Müşterilere özel fiyatlarla lüx araç kiralama hizmeti</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="mg-feature">
                                <div class="mg-feature-icon-title">
                                    <i class="fa fa-phone"></i>
                                    <h3>Uyandırma Servisi</h3>
                                </div>
                                <p>Belirtilen saatte müşteri uyandırma servisi</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mg-feature">
                                <div class="mg-feature-icon-title">
                                    <i class="fa fa-coffee"></i>
                                    <h3>Kahve ve Çay</h3>
                                </div>
                                <p>Ücretsiz kahve ve çay ikramı</p>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mg-feature">
                                <div class="mg-feature-icon-title">
                                    <i class="fa fa-cogs"></i>
                                    <h3>Bedava Wi-Fi</h3>
                                </div>
                                <p>Yüksek hızda Wi-Fi hizmeti</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- İçerik-3 Bitiş -->

    <!-- İçerik Genel Bitiş -->
</asp:Content>
