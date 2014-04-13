<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="ecard.aspx.cs" Inherits="e_card" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Send E-Card" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/patient-visitor.aspx?tabIndex=5" />
        </div>
        <div>
            
            <asp:Panel ID="pnl_all" runat="server" GroupingText="Ecard">
                <table>
                    <thead>
                        <tr>
                            <th class="moveOver"><asp:Label ID="lblTo" runat="server" Text="To" /></th>
                            <th class="moveOver"><asp:Label ID="lbLFrom" runat="server" Text="From" /></th>
                            <th class="moveOver"><asp:Label ID="lblBg" runat="server" Text="Background" /></th>
                            <th class="moveOver"><asp:Label ID="lblFont" runat="server" Text="Font" /></th>
                            <th class="moveOver"><asp:Label ID="lblFontS" runat="server" Text="Font Size" /></th>
                            <th class="moveOver"><asp:Label ID="lblGreet" runat="server" Text="Greeting" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_all" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="moveOver"><%#Eval ("recipient") %></td>
                                    <td class="moveOver"><%#Eval ("name") %></td>
                                    <td class="moveOver"><%#Eval ("background") %></td>
                                    <td class="moveOver"><%#Eval ("font") %></td>
                                    <td class="moveOver"><%#Eval ("size") %></td>
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
            <asp:Panel ID="pnl_update" runat="server" GroupingText="Update E-Card Details">
                <table>
                    <thead>
                        <tr>
                            <th class="moveOver"><asp:Label ID="lblToU" runat="server" Text="To" /></th>
                            <th class="moveOver"><asp:Label ID="lblFromU" runat="server" Text="From" /></th>
                            <th class="moveOver"><asp:Label ID="lblBgU" runat="server" Text="Background" /></th>
                            <th class="moveOver"><asp:Label ID="lblFontU" runat="server" Text="Font" /></th>
                            <th class="moveOver"><asp:Label ID="lblFontSU" runat="server" Text="Font Size" /></th>
                            <th class="moveOver"><asp:Label ID="lblMsgU" runat="server" Text="Message" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_update" runat="server" OnItemCommand="subUpDel">
                            <ItemTemplate>
                                <tr>
                                    <td class="moveOver"><asp:HiddenField ID="hdf_idU" runat="server" Value='<%#Eval ("Id") %>' />
                                        <asp:TextBox ID="txtToU" runat="server" Text='<%#Eval ("recipient") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txtFromU" runat="server" Text='<%#Eval ("name") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txtBgU" runat="server" Text='<%#Eval ("background") %>' />
                                    </td><td class="moveOver">
                                        <asp:TextBox ID="txtFontU" runat="server" Text='<%#Eval ("font") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txtFontSU" runat="server" Text='<%#Eval ("size") %>' />
                                    </td>
                                    <td class="moveOver">
                                        <asp:TextBox ID="txtMsgU" runat="server" Text='<%#Eval ("message") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td><asp:RequiredFieldValidator ID="rfvToU" runat="server" Text="*Required" ControlToValidate="txtToU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfvFromU" runat="server" Text="*Required" ControlToValidate="txtFromU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfvBgU" runat="server" Text="*Required" ControlToValidate="txtBgU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfvFontU" runat="server" Text="*Required" ControlToValidate="txtFontU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfvFontSU" runat="server" Text="*Required" ControlToValidate="txtFontSU" ValidationGroup="update" /></td>
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
                                <asp:Label ID="lblDelete" runat="server" Text="Are you sure you want to permanently delete this e-card?" />
                            </td>
                        </tr>
                        <tr>
                            <th class="moveOver"><asp:Label ID="lblToD" runat="server" Text="To" /></th>
                            <th class="moveOver"><asp:Label ID="lblFromD" runat="server" Text="From" /></th>
                            <th class="moveOver"><asp:Label ID="lblBgD" runat="server" Text="Backgound" /></th>
                            <th class="moveOver"><asp:Label ID="lblFontD" runat="server" Text="Font" /></th>
                            <th class="moveOver"><asp:Label ID="lblFontSD" runat="server" Text="Font Size" /></th>
                            <th class="moveOver"><asp:Label ID="lblMsgD" runat="server" Text="Message" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_delete" runat="server" OnItemCommand="subUpDel">
                            <ItemTemplate>
                                <tr>
                                    <td class="moveOver">
                                        <asp:HiddenField ID="hdf_idD" runat="server" Value='<%#Eval ("Id") %>' />
                                        <asp:Label ID="lblToD" runat="server" Text='<%#Eval ("recipient") %>' />
                                        <asp:Label ID="lblFromD" runat="server" Text='<%#Eval ("name") %>' />
                                        <asp:Label ID="lblBgD" runat="server" Text='<%#Eval ("background") %>' />
                                        <asp:Label ID="lblFontD" runat="server" Text='<%#Eval ("font") %>' />
                                        <asp:Label ID="lblFontSD" runat="server" Text='<%#Eval ("size") %>' />
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

