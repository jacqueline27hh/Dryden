<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="googlemap.aspx.cs" Inherits="google_map" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Google Map API" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Contact.aspx?tabIndex=0" />
        </div>
        
        <asp:SqlDataSource runat="server" id="sds_map" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [google_map]" /> 

         <div id="gmap_wrap">

            <asp:Label runat="server" ID="lbl_results" /> 
           
            <asp:DataList ID="dl_gmap" runat="server" OnItemCommand="subCommand">
                <ItemTemplate>    

                         <div class="slider_row">
                        <div class="slider_left">
                            <asp:label ID="lbl_left" runat="server" Text="Latitude:" /> 
                        </div>
                        <div class="slider_right">
                           <asp:label ID="Label1" runat="server" Text="Longitude:" /> 
                        </div>
                    </div>
                     <div class="slider_row">
                        <div class="slider_left">
                            <asp:textbox ID="txt_lat" runat="server" Text='<%#Eval("lat") %>' /> 
                        </div>
                        <div class="slider_right">
                            <asp:textbox ID="txt_lng" runat="server" Text='<%#Eval("lng") %>'  /> 
                        </div>
                    </div>
                                           
                    <div id="save">
                        <asp:Button runat="server" ID="btn_save" Text="Save All Changes" CommandName="btn_save" />
                    </div>

        
                </ItemTemplate>
            </asp:DataList>
           
        </div>
        

    </div>
    <%--end admin_form--%>
</asp:Content>

