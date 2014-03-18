<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="imageslider.aspx.cs" Inherits="admin_imageslider" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Image Slider" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Home.aspx" />
        </div>
        
        <div id="slider_adminwrap">

            <asp:Label runat="server" ID="lbl_results" /> 
           
            <asp:DataList ID="dl_slideradmin" runat="server" OnItemCommand="subCommand">
                <ItemTemplate>    
                     <table>
                         <div class="slider_row">
                        <div class="slider_left">
                            <asp:Label ID="Label1" runat="server" Text="IMAGES:" /> 
                        </div>
                        <div class="slider_right">
                            <asp:Label ID="Label2" runat="server" Text="CAPTION:" /> 
                        </div>
                    </div>

                  <div class="slider_row">
                    <div class="slider_left">
                        <asp:Image runat="server" ID="item_img1" ImageUrl='<%#Eval("imageurl1") %>' />
                                 <br /> <asp:Button runat="server" ID="btn_upload1" CommandName="btn_upload" Text="Upload New" CommandArgument="1" />
                                <asp:Button runat="server" ID="Button1" Text="Delete" OnClientClick="return confirm('this will permanenetly delete this image from the database, proceed?');" /> 

                    </div> 
                    <div class="slider_right">
                        <asp:TextBox runat="server" id="txt_caption1" Text='<%#Eval("caption1") %>'  /> 
                    </div>
                </div>

                    <div class="slider_row">
                    <div class="slider_left">
                        <asp:Image runat="server" ID="item_img2" ImageUrl='<%#Eval("imageurl2") %>' />
                                 <br /> <asp:Button runat="server" ID="Button2" CommandName="btn_upload" Text="Upload New" CommandArgument="1" />
                                <asp:Button runat="server" ID="Button3" Text="Delete" OnClientClick="return confirm('this will permanenetly delete this image from the database, proceed?');" /> 

                    </div> 
                    <div class="slider_right">
                        <asp:TextBox runat="server" id="txt_caption2" Text='<%#Eval("caption2") %>'  /> 
                    </div>
                        </div>

                    <div class="slider_row">
                    <div class="slider_left">
                        <asp:Image runat="server" ID="item_img3" ImageUrl='<%#Eval("imageurl3") %>' />
                                 <br /> <asp:Button runat="server" ID="Button4" CommandName="btn_upload" Text="Upload New" CommandArgument="1" />
                                <asp:Button runat="server" ID="Button5" Text="Delete" OnClientClick="return confirm('this will permanenetly delete this image from the database, proceed?');" /> 

                    </div> 
                    <div class="slider_right">
                        <asp:TextBox runat="server" id="txt_caption3" Text='<%#Eval("caption3") %>'  /> 
                    </div>
                        </div>

                    <div id="save">
                        <asp:Button runat="server" ID="btn_save" Text="Save All Changes" CommandName="btn_save" />
                    </div>

                      </table>           
                </ItemTemplate>
            </asp:DataList>
           
        </div>
        

        

    </div>
    <%--end admin_form--%>
</asp:Content>

