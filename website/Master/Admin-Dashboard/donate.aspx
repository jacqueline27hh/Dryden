﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="donate.aspx.cs" Inherits="admin_donate" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Donate Now" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/About.aspx?tabIndex=3" />
        </div>
        

        

    </div>
    <%--end admin_form--%>
</asp:Content>

