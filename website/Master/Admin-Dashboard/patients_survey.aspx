<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="patients_survey.aspx.cs" Inherits="patients_survey" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Patient Feedback" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/patient-visitor.aspx?tabIndex=3" />
        </div>
        
       

        <div>
            
            <asp:Panel ID="pnl_all" runat="server" GroupingText="Patient Feedback">
                <table>
                    <thead>
                        <tr>
                            <th class="moveOver"><asp:Label ID="lblFname" runat="server" Text="First Name    " /></th>
                            <th class="moveOver"><asp:Label ID="lbLname" runat="server" Text="Last Name    " /></th>
                            <th class="moveOver"><asp:Label ID="lblEmail" runat="server" Text="Email Address    " /></th>
                            <th class="moveOver"><asp:Label ID="lblRev" runat="server" Text="Review of    " /></th>
                            <th class="moveOver"><asp:Label ID="lblMsg" runat="server" Text="Message" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_all" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="moveOver"><%#Eval ("firstname") %></td>
                                    <td class="moveOver"><%#Eval ("lastname") %></td>
                                    <td class="moveOver"><%#Eval ("email") %></td>
                                    <td class="moveOver"><%#Eval ("reviewof") %></td>
                                    <td class="moveOver"><%#Eval ("message") %></td>
                                    <td class="moveOver"><asp:LinkButton ID="btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval ("Id") %>' OnCommand="subAdmin" /></td>
                                    <td class="moveOver"><asp:LinkButton ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval ("Id") %>' OnCommand="subAdmin" /></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <br /><br />
                <asp:Label ID="lbl_message" runat="server" />
            </asp:Panel>
            <asp:Panel ID="pnl_update" runat="server" GroupingText="Update Feedback Details">
                <table>
                    <thead>
                        <tr>
                            <th class="moveOver"><asp:Label ID="lblFnameU" runat="server" Text="First Name  " /></th>
                            <th class="moveOver"><asp:Label ID="lblLnameU" runat="server" Text="Last Name  " /></th>
                            <th class="moveOver"><asp:Label ID="lblEmailU" runat="server" Text="Email  " /></th>
                            <th class="moveOver"><asp:Label ID="lblRevU" runat="server" Text="Review of  " /></th>
                            <th class="moveOver"><asp:Label ID="lblMsgU" runat="server" Text="Message  " /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_update" runat="server" OnItemCommand="subUpDel">
                            <ItemTemplate>
                                <tr>
                                    <td class="moveOver"><asp:HiddenField ID="hdf_idU" runat="server" Value='<%#Eval ("Id") %>' />
                                        <asp:TextBox ID="txtFnameU" runat="server" Text='<%#Eval ("firstname") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txtLnameU" runat="server" Text='<%#Eval ("lastname") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txtEmailU" runat="server" Text='<%#Eval ("email") %>' />
                                    </td><td class="moveOver">
                                        <asp:TextBox ID="txtRevU" runat="server" Text='<%#Eval ("reviewof") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txtMsgU" runat="server" Text='<%#Eval ("message") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td><asp:RequiredFieldValidator ID="rfvFnameU" runat="server" Text="*Required" ControlToValidate="txtFnameU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfvLnameU" runat="server" Text="*Required" ControlToValidate="txtLnameU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfvEmailU" runat="server" Text="*Required" ControlToValidate="txtEmailU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfvRevU" runat="server" Text="*Required" ControlToValidate="txtRevU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfvMsg" runat="server" Text="*Required" ControlToValidate="txtMsgU" ValidationGroup="update" /></td>
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
            <asp:Panel ID="pnl_delete" runat="server" GroupingText="Delete Feedback">
                <table>
                    <thead>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="lblDelete" runat="server" Text="Are you sure you want to permanently delete this review?" />
                            </td>
                        </tr>
                        <tr>
                            <th class="moveOver"><asp:Label ID="lblFnameD" runat="server" Text="First Name" /></th>
                            <th class="moveOver"><asp:Label ID="lblLnameD" runat="server" Text="Last Name" /></th>
                            <th class="moveOver"><asp:Label ID="lblEmailD" runat="server" Text="Email" /></th>
                            <th class="moveOver"><asp:Label ID="lblRevD" runat="server" Text="Review of  " /></th>
                            <th class="moveOver"><asp:Label ID="lblMsgD" runat="server" Text="Message  " /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_delete" runat="server" OnItemCommand="subUpDel">
                            <ItemTemplate>
                                <tr>
                                    <td class="moveOver">
                                        <asp:HiddenField ID="hdf_idD" runat="server" Value='<%#Eval ("Id") %>' />
                                        <asp:Label ID="lblFnameD" runat="server" Text='<%#Eval ("firstname") %>' />
                                        <asp:Label ID="lblLnameD" runat="server" Text='<%#Eval ("lastname") %>' />
                                        <asp:Label ID="lblEmailD" runat="server" Text='<%#Eval ("email") %>' />
                                        <asp:Label ID="lblRevD" runat="server" Text='<%#Eval ("reviewof") %>' />
                                        <asp:Label ID="lblMsgD" runat="server" Text='<%#Eval ("message") %>' />

                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
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



