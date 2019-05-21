<%@ Page Title="" Language="C#" MasterPageFile="~/OverConfident.Master" AutoEventWireup="true" CodeBehind="rezervasyon.aspx.cs" Inherits="Otel_Rezervasyon.rezervasyon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <!-- Content Başlangıç-->
    <div style="background-color:silver" class="container">
        
        <div class="row mt50 mb100">
             
            <div class="col-md-12">

                <div class="row mt80">
                     <div style="height:70px;text-align:center;line-height:65px; font-size:large;" class="col-xs-12 btn btn-dark">Oda Bilgisi</div>
                   <%--<center>  <div style="width:110px; background-color:black; height:40px; color:white; font-size:larger; line-height:40px; border:1px solid white;">Oda Bilgisi</div></center>--%>

                    <div class="col-sm-2">
                      
                    </div>
                    <div class="col-sm-8">
                        <div style="background-color:whitesmoke; border:1px solid black; border-radius:20px;" class="row mt50 mb10">
                           
                            <center>
                            <div style="margin-top:10px;"> 
                                <b>Hizmet Tipi</b> :  
                            <asp:DropDownList ID="ddlHizmet" AutoPostBack="true" runat="server"></asp:DropDownList>
                                </div>
                                </center>
                            <br /><br />
                            <table>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <tr>
                                        <td style="font-weight:bold" class="col-xs-3"></td>
                                        <td style="font-weight:bold" class="col-xs-2">Oda No</td>
                                        <td style="font-weight:bold" class="col-xs-2">Kapasite</td>
                                        <td style="font-weight:bold" class="col-xs-2">Fiyat</td>
                                        <td style="font-weight:bold" class="col-xs-2">Fiyat+Hizmet</td>
                                    </tr>
                                  
                                </HeaderTemplate>
                                <ItemTemplate>
                                  
                                    <tr>
                                        <td class="col-xs-3 mt50"><div id="resim"><img src="images/blog-3.png" width="150" height="150" />  </div> </td>
                                        <td class="col-xs-2 mt50"> <asp:Label ID="lblOdaNo" runat="server" Text='<%#Eval("OdaNo") %>' Font-Bold="true" ForeColor="BlueViolet"></asp:Label></td>
                                        <td class="col-xs-2 mt50"> <asp:Label ID="Label1" runat="server" Text='<%#Eval("MaxKapasite") %>' Font-Bold="true" ForeColor="BlueViolet"></asp:Label></td>
                                        <td class="col-xs-2 mt50"> <asp:Label ID="Label2" runat="server" Text='<%#Eval("Fiyat") %>' Font-Bold="true" ForeColor="BlueViolet"></asp:Label>  </td>
                                        <td class="col-xs-2 mt50"> <asp:Label ID="Label3" runat="server" Text="" Font-Bold="true" ForeColor="ForestGreen">></asp:Label> </td>
                                        
                                  
                                    </tr>
                                     <tr>
                                        <td>&nbsp</td>
                                    </tr>
                                    
                            
                         
                                </ItemTemplate>
                               
                            </asp:Repeater>
                                </table>
                          <center> <asp:Button ID="btnDevamm" OnClick="btnDevamm_Click" CssClass="btn btn-warning" runat="server" Text="Rezervasyona Devam" /> </center>
                            <br />
                        </div>
                    </div>
                    <div class="col-sm-2">
                    </div>
                </div>
            </div>
        </div>
    </div>





    <!-- Content Bitiş-->
</asp:Content>
