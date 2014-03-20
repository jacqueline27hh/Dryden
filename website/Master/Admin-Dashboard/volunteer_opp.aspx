<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="volunteer_opp.aspx.cs" Inherits="volunteer_opp" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Volunteer Opportunities " CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Career.aspx?tabIndex=3" />
        </div>
        <asp:Panel ID="update_pnl" runat="server">
            <table>
                <thead>
                    <tr>
                        <th><asp:Label ID="lbl_IdU" runat="server" Text="Id" /></th>
                        <th><asp:Label ID="lblfnameU" runat="server" Text="Firstname" /></th>
                        <th><asp:Label ID="lbllnameU" runat="server" Text="Lastname" /></th>
                        <th><asp:Label ID="lblemailU" runat="server" Text="Email" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:ListView ID="lst_update" runat="server" OnItemCommand="subUpdel">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="hdf_id" runat="server" Value='<%#Eval("Id") %>' />
                                    <asp:TextBox ID="txtfnameU" runat="server" Text='<%#Eval("firstname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtlnameU" runat="server" Text='<%#Eval("lastname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtemailU" runat="server" Text='<%#Eval("email") %>' />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfv_fname" runat="server" Text="*Required" ControlToValidate="txtfnameU" ValidationGroup="update" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfv_lname" runat="server" Text="*Required" ControlToValidate="txtlnameU" ValidationGroup="update" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfv_email" runat="server" Text="*Required" ControlToValidate="txtemailU" ValidationGroup="update" />
                                    <asp:RegularExpressionValidator ID="rev_email" runat="server" Text="Invalid Email Address" ControlToValidate="txtemailU" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ValidationGroup="update" />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btn_update" runat="server" Text="Update" CommandName="Update" ValidationGroup="update" />
                                   
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </asp:Panel>

        

    </div>
    <%--end admin_form--%>
</asp:Content>

