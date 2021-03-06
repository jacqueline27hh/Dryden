﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="career.aspx.cs" Inherits="admin_career" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Apply for Career" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Career.aspx?tabIndex=1" />
        </div>
        
        <div>
            <asp:Label ID="lbl_add" runat="server" Text="Add a new applicant" />
            <br /><br />
            <asp:Label ID="lbl_jobIDI" runat="server" Text="Job ID" AssociatedControlID="txt_jobIDI" />
            <br />
            <asp:TextBox ID="txt_jobIDI" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_jobIDI" runat="server" Text="*Required" ControlToValidate="txt_jobIDI" ValidationGroup="insert" />
            <br />
            <asp:Label ID="lbl_fnameI" runat="server" Text="First Name" AssociatedControlID="txt_fnameI" />
            <br />
            <asp:TextBox ID="txt_fnameI" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_fnameI" runat="server" Text="*Required" ControlToValidate="txt_fnameI" ValidationGroup="insert" />
            <br />
            <asp:Label ID="lbl_lnameI" runat="server" Text="Last Name" AssociatedControlID="txt_lnameI" />
            <br />
            <asp:TextBox ID="txt_lnameI" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_lnameI" runat="server" Text="*Required" ControlToValidate="txt_lnameI" ValidationGroup="insert" />
            <br />
            <asp:Label ID="lbl_emailI" runat="server" Text="Email" AssociatedControlID="txt_emailI" />
            <br />
            <asp:TextBox ID="txt_emailI" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_emailI" runat="server" Text="*Required" ControlToValidate="txt_emailI" ValidationGroup="insert" />
            <br /><br />
            <asp:Button ID="btn_insert" runat="server" Text="Insert" CommandName="Insert" OnCommand="subAdmin" ValidationGroup="insert" />
            <br />
            <br />
            <asp:Panel ID="pnl_all" runat="server" GroupingText="Applicants">
                <table>
                    <thead>
                        <tr>
                            <th class="moveOver"><asp:Label ID="lbl_fname" runat="server" Text="First Name" /></th>
                            <th class="moveOver"><asp:Label ID="lbl_lname" runat="server" Text="Last Name" /></th>
                            <th><asp:Label ID="lbl_email" runat="server" Text="Email" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_all" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="moveOver"><%#Eval ("firstname") %></td>
                                    <td class="moveOver"><%#Eval ("lastname") %></td>
                                    <td class="moveOver"><%#Eval ("email") %></td>
                                    <td class="moveOver"><asp:LinkButton ID="btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval ("Id") %>' OnCommand="subAdmin" /></td>
                                    <td><asp:LinkButton ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval ("Id") %>' OnCommand="subAdmin" /></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <br /><br />
                <asp:Label ID="lbl_message" runat="server" />
            </asp:Panel>
            <asp:Panel ID="pnl_update" runat="server" GroupingText="Update Applicant Details">
                <table>
                    <thead>
                        <tr>
                            <th><asp:Label ID="lbl_fnameU" runat="server" Text="First Name" /></th>
                            <th><asp:Label ID="lbl_lanmeU" runat="server" Text="Last Name" /></th>
                            <th><asp:Label ID="lbl_emailU" runat="server" Text="Email" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_update" runat="server" OnItemCommand="subUpDel">
                            <ItemTemplate>
                                <tr>
                                    <td><asp:HiddenField ID="hdf_idU" runat="server" Value='<%#Eval ("Id") %>' />
                                        <asp:TextBox ID="txt_fnameU" runat="server" Text='<%#Eval ("firstname") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txt_lnameU" runat="server" Text='<%#Eval ("lastname") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txt_emailU" runat="server" Text='<%#Eval ("email") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td><asp:RequiredFieldValidator ID="rfv_fnameU" runat="server" Text="*Required" ControlToValidate="txt_fnameU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfv_lnameU" runat="server" Text="*Required" ControlToValidate="txt_lnameU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfv_emailU" runat="server" Text="*Required" ControlToValidate="txt_emailU" ValidationGroup="update" /></td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="btn_update" runat="server" Text="Update" CommandName="Update" ValidationGroup="update" />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="false" />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </asp:Panel>        
            <asp:Panel ID="pnl_delete" runat="server" GroupingText="Delete Applicant">
                <table>
                    <thead>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="lbl_delete" runat="server" Text="Are you sure you want to delete this applicant?" />
                            </td>
                        </tr>
                        <tr>
                            <th class="moveOver"><asp:Label ID="lbl_fnameD" runat="server" Text="First Name" /></th>
                            <th class="moveOver"><asp:Label ID="lbl_lnameD" runat="server" Text="Last Name" /></th>
                            <th class="moveOver"><asp:Label ID="lbl_emailD" runat="server" Text="Email" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_delete" runat="server" OnItemCommand="subUpDel">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:HiddenField ID="hdf_idD" runat="server" Value='<%#Eval ("Id") %>' />
                                        <asp:Label ID="lbl_fnameD" runat="server" Text='<%#Eval ("firstname") %>' />
                                        <asp:Label ID="lbl_lnameD" runat="server" Text='<%#Eval ("lastname") %>' />
                                        <asp:Label ID="lbl_emailD" runat="server" Text='<%#Eval ("email") %>' />

                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </asp:Panel>
        </div>

        

    </div>
    <%--end admin_form--%>
</asp:Content>

