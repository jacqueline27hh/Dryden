<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="admin_search" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Search Feature" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Home.aspx" />
        </div>
        
        <asp:SqlDataSource runat="server" ID="sds_search" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [search_API]" /> 

        <asp:Repeater runat="server" ID="rpt_search" DataSourceID="sds_search">

        </asp:Repeater>

        

    </div>
    <%--end admin_form--%>
</asp:Content>

