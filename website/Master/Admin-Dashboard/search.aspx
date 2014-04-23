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

        <table id="search_table" class="col-sm-8" > 
            <tr>
                <td> First name:* </td>
                <td> Last name:* </td>
                <td> Department:* </td>
                <td> Phone:* </td>
                <td> Email: </td>
                <td></td>
            </tr>
        <asp:Repeater runat="server" ID="rpt_search" OnItemCommand="subCommand">
            <ItemTemplate>
                <tr>
                    <td> <asp:TextBox runat="server" id="txt_fname" Text='<%#Eval ("fname") %>' /> </td>
                    <asp:RequiredFieldValidator runat="server" ID="rfv_fname" ControlToValidate="txt_fname"
                        Display="None" ErrorMessage="*First name is required" ValidationGroup="edit_search" /> 
                    <asp:RegularExpressionValidator runat="server" ID="rev_fname" ControlToValidate="txt_fname"
                        ValidationExpression="^[a-zA-Z]+$" ErrorMessage="*First name must consist of letters only" ValidationGroup="edit_search" /> 

                    <td> <asp:TextBox runat="server" ID="txt_lname" Text='<%#Eval ("lname") %>' /> </td>
                    <asp:RequiredFieldValidator runat="server" ID="rfv_lname" ControlToValidate="txt_lname"
                        Display="None" ErrorMessage="*Last name is required" ValidationGroup="edit_search" /> 
                    <asp:RegularExpressionValidator runat="server" ID="rev_lname" ControlToValidate="txt_lname"
                        ValidationExpression="^[a-zA-Z]+$" ErrorMessage="*Last name must consist of letters only" ValidationGroup="edit_search" /> 

                    <td> <asp:TextBox runat="server" ID="txt_department" Text='<%#Eval ("department") %>' /></td>
                    <asp:RequiredFieldValidator runat="server" ID="rfv_department" ControlToValidate="txt_department"
                        Display="None" ErrorMessage="*Department is required" ValidationGroup="edit_search" /> 
                   

                    <td> <asp:TextBox runat="server" ID="txt_phone" Text='<%#Eval("phone") %>' /></td>
                    <asp:RequiredFieldValidator runat="server" ID="rfv_phone" ControlToValidate="txt_phone"
                        Display="None" ErrorMessage="*phone is required" ValidationGroup="edit_search" /> 

                    <!-- no validation since email is optional --> 
                    <td> <asp:TextBox runat="server" ID="txt_email" Text='<%#Eval("email") %>' /></td>
                    <td> <asp:Button runat="server" ID="btn_update" Text="Update" CommandName="sub_update" CommandArgument='<%#Eval("Id") %>' ValidationGroup="edit_search" />
                    </td>
                    <td>
                        <asp:Button runat="server" ID="btn_delete" OnClientClick="return confirm('This will permanently delete this entry from the database, are you sre?')" Text="Delete" CommandName="sub_delete" CommandArgument='<%#Eval("Id") %>' CausesValidation="false" />
                    </td>
                </tr>
            </ItemTemplate>
          
            <FooterTemplate>
                  <hr />
                 <tr>
                    <td> <asp:TextBox runat="server" id="txt_fnameI" Text='<%#Eval ("fname") %>' /> </td>
                      <asp:RequiredFieldValidator runat="server" ID="rfv_fnameI" ControlToValidate="txt_fnameI"
                        Display="None" ErrorMessage="*First name is required" ValidationGroup="insert_search" /> 
                    <asp:RegularExpressionValidator runat="server" ID="rev_fname" ControlToValidate="txt_fnameI"
                        ValidationExpression="^[a-zA-Z]+$" ErrorMessage="*First name must consist of letters only" ValidationGroup="insert_search" /> 
                     
                    <td> <asp:TextBox runat="server" ID="txt_lnameI" Text='<%#Eval ("lname") %>' /> </td>
                   <asp:RequiredFieldValidator runat="server" ID="rfv_lnameI" ControlToValidate="txt_lnameI"
                        Display="None" ErrorMessage="*Last name is required" ValidationGroup="insert_search" /> 
                    <asp:RegularExpressionValidator runat="server" ID="rev_lnameI" ControlToValidate="txt_lnameI"
                        ValidationExpression="^[a-zA-Z]+$" ErrorMessage="*Last name must consist of letters only" ValidationGroup="insert_search" /> 


                    <td> <asp:TextBox runat="server" ID="txt_departmentI" Text='<%#Eval ("department") %>' /></td>
                     <asp:RequiredFieldValidator runat="server" ID="rfv_departmentI" ControlToValidate="txt_departmentI"
                        Display="None" ErrorMessage="*Department is required" ValidationGroup="insert_search" /> 

                    <td> <asp:TextBox runat="server" ID="txt_phoneI" Text='<%#Eval("phone") %>' /></td>
                     <asp:RequiredFieldValidator runat="server" ID="rfv_phoneI" ControlToValidate="txt_phoneI"
                        Display="None" ErrorMessage="*phone is required" ValidationGroup="insert_search" /> 

                    <td> <asp:TextBox runat="server" ID="txt_emailI" Text='<%#Eval("email") %>' /></td>
                    <td> <asp:Button runat="server" ID="btn_insert" Text="Insert New" CommandName="sub_insert" ValidationGroup="insert_search" /> </td>
                </tr>
            </FooterTemplate>
        </asp:Repeater>
        </table>
        
        
         <asp:ValidationSummary ID="vs_edit" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="edit_search" /> 
         <asp:ValidationSummary ID="vs_insert" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="insert_search" /> 
    </div>
    <%--end admin_form--%>
</asp:Content>

