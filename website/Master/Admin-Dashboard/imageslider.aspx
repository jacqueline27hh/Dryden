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
                        <tr>
                            <td> Image: </td>
                            <td> Caption: </td>
                            <td> Save/ Delete: </td>
                        </tr>                
                        <tr>
                            <td class="adminslider_img"> <asp:Image runat="server" ID="item_img1" ImageUrl='<%#Eval("imageurl1") %>' />
                                 <asp:Button runat="server" ID="btn_upload1" CommandName="btn_upload" Text="Upload New" CommandArgument="1" />
                            </td>
                            <td class="adminslider_caption"> <asp:TextBox runat="server" id="txt_caption1" Text='<%#Eval("caption1") %>'  /> </td>
                            <td> <asp:Button runat="server" ID="btn_delete" Text="X" OnClientClick="return confirm('this will permanenetly delete this image from the database, proceed?');" /> </td>
                        </tr>   
                         <tr>
                            <td class="adminslider_img"> <asp:Image runat="server" ID="item_img2" ImageUrl='<%#Eval("imageurl2") %>' />
                                 <asp:Button runat="server" ID="btn_upload2" CommandName="btn_upload" Text="Upload New" CommandArgument="2" />
                            </td>
                            <td class="adminslider_caption"> <asp:TextBox runat="server" id="txt_caption2" Text='<%#Eval("caption2") %>'  /> </td>
                            <td> <asp:Button runat="server" ID="Button3" Text="X" OnClientClick="return confirm('this will permanenetly delete this image from the database, proceed?');" /> </td>
                        </tr>     
                         <tr>
                            <td class="adminslider_img"> <asp:Image runat="server" ID="Image2" ImageUrl='<%#Eval("imageurl3") %>' />
                                 <asp:Button runat="server" ID="Button4" CommandName="btn_upload" Text="Upload New" CommandArgument="3" />
                            </td>
                            <td class="adminslider_caption"> <asp:TextBox runat="server" id="txt_caption3" Text='<%#Eval("caption3") %>'  /> </td>
                            <td> <asp:Button runat="server" ID="Button6" Text="X" OnClientClick="return confirm('this will permanenetly delete this image from the database, proceed?');" /> </td>
                        </tr>     
                         <tr>
                             <td> <asp:Button runat="server" ID="btn_save" Text="Save All Changes" CommandName="btn_save" /> </td>
                         </tr>
                      </table>           
                </ItemTemplate>
            </asp:DataList>
           
        </div>
        

        

    </div>
    <%--end admin_form--%>
</asp:Content>

