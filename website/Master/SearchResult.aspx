<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="Default2" %>
<%@ MasterType VirtualPath="~/main.master" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" Runat="Server">
    <div class="container" id="main">
		
        <asp:SqlDataSource runat="server" ID="sds_search"
             ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" /> 

        
        <asp:Repeater ID="rpt_search" runat="server">
        
            <HeaderTemplate>
                <table>
                <tr>
                    <td> First: </td>
                    <td> Last: </td>
                    <td> Department: </td>
                    <td> Phone: </td>
                    <td> Email: </td>
                </tr>
            </HeaderTemplate>
            
            <ItemTemplate>
                    <tr>
                       <td> <%#Eval("fname") %> </td>
                       <td> <%#Eval("lname") %> </td>
                       <td> <%#Eval("department") %> </td>
                       <td> <%#Eval("phone") %> </td>
                       <td> <%#Eval("email") %> </td>
                    </tr>

            </ItemTemplate>
        </asp:Repeater>
            </table>
    </div>
</asp:Content>



