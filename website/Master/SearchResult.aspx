<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="Default2" %>
<%@ MasterType VirtualPath="~/main.master" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" Runat="Server">
    <div class="container" id="main">
		
        <asp:SqlDataSource runat="server" ID="sds_search"
             ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" /> 


        <asp:Label runat="server" ID="lbl_test" /> 
        
        <div id="results_wrap">
        <asp:Repeater ID="rpt_search" runat="server">
        
            <HeaderTemplate>
                <table id="search_results">
                <tr>
                    <td class="first"> First: </td>
                    <td class="first"> Last: </td>
                    <td class="first"> Department: </td>
                    <td class="first"> Phone: </td>
                    <td class="first"> Email: </td>
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
    </div>
</asp:Content>



