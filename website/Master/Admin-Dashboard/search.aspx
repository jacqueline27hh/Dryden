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

        <asp:Label runat="server" ID="lbl_results" /> 

        <table> 
            <tr>
                <td> First name: </td>
                <td> Last name: </td>
                <td> Department: </td>
                <td> Phone: </td>
                <td> Email: </td>
            </tr>
        <asp:Repeater runat="server" ID="rpt_search" DataSourceID="sds_search" OnItemCommand="subCommand">
            <ItemTemplate>
                <tr>
                    <td> <asp:TextBox runat="server" id="txt_fname" Text='<%#Eval ("fname") %>' /> </td>
                    <td> <asp:TextBox runat="server" ID="txt_lname" Text='<%#Eval ("lname") %>' /> </td>
                    <td> <asp:TextBox runat="server" ID="txt_department" Text='<%#Eval ("department") %>' /></td>
                    <td> <asp:TextBox runat="server" ID="txt_phone" Text='<%#Eval("phone") %>' /></td>
                    <td> <asp:TextBox runat="server" ID="txt_email" Text='<%#Eval("email") %>' /></td>
                    <td> <asp:Button runat="server" ID="btn_update" Text="Update" CommandName="sub_update" CommandArgument='<%#Eval("Id") %>' />
                        <asp:Button runat="server" ID="btn_delete" OnClientClick="return confirm('This will permanently delete this entry from the database, are you sre?')" Text="Delete" CommandName="sub_delete" CommandArgument='<%#Eval("Id") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                 <tr>
                    <td> <asp:TextBox runat="server" id="txt_fnameI" Text='<%#Eval ("fname") %>' /> </td>
                    <td> <asp:TextBox runat="server" ID="txt_lnameI" Text='<%#Eval ("lname") %>' /> </td>
                    <td> <asp:TextBox runat="server" ID="txt_departmentI" Text='<%#Eval ("department") %>' /></td>
                    <td> <asp:TextBox runat="server" ID="txt_phoneI" Text='<%#Eval("phone") %>' /></td>
                    <td> <asp:TextBox runat="server" ID="txt_emailI" Text='<%#Eval("email") %>' /></td>
                    <td> <asp:Button runat="server" ID="btn_insert" Text="Insert New" CommandName="sub_insert" /> </td>
                </tr>
            </FooterTemplate>
        </asp:Repeater>
        </table>
        

    </div>
    <%--end admin_form--%>
</asp:Content>

