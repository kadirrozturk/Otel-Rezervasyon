<%@ Page Title="" Language="C#" MasterPageFile="~/OverConfident.Master" AutoEventWireup="true" CodeBehind="rezervasyon2.aspx.cs" Inherits="Otel_Rezervasyon.rezervasyon2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content Başlangıç-->
   <div style="background-color:silver" class="container">

        <div style="height:450px;" class="row mt50 mb100">

            <div class="col-xs-12 mt80 mb50">
                <div style="height:70px;text-align:center;line-height:65px;" class="col-xs-12 btn btn-dark">Misafir Kayit Bilgisi</div>
                <div class="col-xs-3 mt50">

                       
                    </div>
                    <div class="col-xs-2 mt50">

                         <asp:Panel ID="Panel1" runat="server">


                         </asp:Panel>
                    </div>
                    <div class="col-xs-2 mt50">

                     <asp:Panel ID="Panel2" runat="server">


                        </asp:Panel>
                        <br /><br />
      <asp:Button ID="vtKaydet" CssClass="btn btn-dark form-control" runat="server" Text="Tamamla" OnClick="vtKaydet_Click" />
                        </div>


                    <div class="col-xs-2 mt50">
                        
                        <asp:Panel ID="Panel3" runat="server">

                        </asp:Panel>

                    </div>
                <div class="col-xs-3 mt50">    

                   

                </div>

                   

                </div>
            </div>
        </div>

 

    <!-- Content Bitiş-->
</asp:Content>
