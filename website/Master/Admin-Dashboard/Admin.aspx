<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Dashboard_Admin" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" CssClass="col-lg-9 admin_header"/>
            <asp:Label ID="lbl_welcome" runat="server" Text="Welcome Admin! Please select from the left sidebar the feature you wish to view and/or edit." CssClass="col-lg-9 admin_header" />
        </div>
    </div>
    <%--end admin_form--%>
</asp:Content>
