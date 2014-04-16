<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="alert.aspx.cs" Inherits="admin_alert" Theme="mainStyle" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div
        
        v class="col-sm-8 admin_form">
   
       

        <div class="row" id="alert_header_wrapper">
        <asp:Label ID="alert_lbl_header" runat="server" Text="Alert Admin" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="alert_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Home.aspx"/>
        </div>
        <asp:Panel ID="alert_pnl_insert" runat="server" GroupingText="Insert Alert">

        <asp:Label ID="alert_lbl_output" runat="server" />
        <br />
        <br />
        <asp:Label ID="alert_lbl_insert" runat="server" Text="Title" AssociatedControlID="alert_txt_titleI" CssClass="admin_label" />
        <br />
        <br />
        <asp:TextBox ID="alert_txt_titleI" runat="server" />
        <br />
        <br />
        <asp:Label ID="alert_lbl_message"  runat="server" Text="Message" AssociatedControlID="alert_txt_messageI" CssClass="admin_label" />
        <br />
        <asp:TextBox ID="alert_txt_messageI" TextMode="MultiLine" runat="server" />
        <br />
        <asp:Button ID="alert_btn_insert" runat="server" Text="Insert" CommandName="Insert" Display="Dynamic" OnCommand="subAdmin" ValidationGroup="insert" />
        <br />
        <br />
        </asp:Panel>
        <asp:Panel ID="alert_pnl_all" runat="server" GroupingText="All Alerts">
            <table>
                <thead>
                    <tr>
                        <th>
                            <asp:Label ID="alert_lbl_title" runat="server" Text="Title" /></th>
                        <th>
                            </th>
                        <th>
                            </th>

                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="alert_rpt_all" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td id="alert_title_td"><%#Eval("Title") %></td>
                                <td>
                                    <asp:LinkButton ID="alert_btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval("id")%>' OnCommand="subAdmin" />
                                    <td>
                                        <asp:LinkButton ID="alert_btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("id")%>' OnCommand="subAdmin" />
                                    </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

        </asp:Panel><%--end alert_pnl_all--%>
<%--Update Panel Starts here--%>
        <asp:Panel ID="alert_pnl_update" runat="server" GroupingText="Update Alert">
            <table id="alert_up_table">
                <thead>
                    <tr>
                        <th><asp:Label ID="alert_lbl_titleU" runat="server" Text="Title" /></th>
                        <th><asp:Label ID="alert_lbl_messageU" runat="server" Text="Message" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="alert_rpt_update" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td id="alert_title_td">
                                    <asp:HiddenField ID="alert_hdf_idU" runat="server" Value='<%#Eval("id")%>'  />
                                    <asp:TextBox ID="alert_txt_titleU" CssClass="alert_up_title" runat="server" Text='<%#Eval("Title")%>' />

                                </td>
                                <td id="alert_message_td">
                                    <asp:TextBox ID="alert_txt_messageU" runat="server" Text='<%#Eval("Message")%>' TextMode="MultiLine" CssClass="alert_textarea" />

                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="alert_btn_update" runat="server" Text="Update" CommandName="Update" ValidationGroup="update" />
                                    <asp:Button ID="alert_btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" CauseValidation="false" />
                                </td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>
                </tbody>
            </table>
        </asp:Panel>
        <%--Delete Panel--%>
        <asp:Panel ID="alert_pnl_delete" runat="server" GroupingText="Delete Alert">
            <table>
                <thead>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="alert_lbl_delete" runat="server" Text="Are you sure you want to delete this item?" />
                        </td>
                    </tr>
                    <tr>
                        <th><asp:Label ID="alert_lbl_titleD" runat="server" Text="Title" /></th>
                        <th><asp:Label ID="alert_lbl_messageD" runat="server" Text="Message" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="alert_rpt_delete" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="alert_hdf_idD" runat="server" Value='<%#Eval("id")%>' />
                                    <asp:Label ID="alert_txt_titleD" runat="server" Value='<%#Eval("Title")%>' />  
                                </td>
                                      <td>
                                    
                                    <asp:Label ID="alert_txt_messageD" runat="server" Value='<%#Eval("Message")%>' />  
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="alert_btn_delete" runat="server" Text="Delete" CommandName="Delete" />
                                    <asp:Button ID="alert_btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                </td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>
                </tbody>
            </table>
        </asp:Panel>


        

    </div>
    <%--end admin_form--%>
</asp:Content>

