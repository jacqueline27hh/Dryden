<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="erWaitTime.aspx.cs" Inherits="er_wt" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="ER Wait Time" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/program-service.aspx?tabIndex=1" />
        </div>
        
         <asp:Panel ID="pnl_insert" runat="server" GroupingText="Insert Waiting Time">

        <asp:Label ID="lbl_output" runat="server" />
        <br />
        <br />
        <asp:Label ID="lbl_insert" runat="server" Text="Waiting Time" AssociatedControlID="txtwaittimeI"/>
        <br />
        <br />
        <asp:TextBox ID="txtwaittimeI" runat="server" />
        <br />
        <br />
        <asp:Label ID="lbl_checktimeI"  runat="server" Text="Checked In Time" AssociatedControlID="txtcheckTimeI" />
        <br />
        <asp:TextBox ID="txtcheckTimeI" runat="server" />
        <br />
        <asp:Button ID="btn_insert" runat="server" Text="Insert" CommandName="Insert" Display="Dynamic" OnCommand="subAdmin" ValidationGroup="insert" />
        <br />
        <br />
        </asp:Panel>
        <asp:Panel ID="pnl_all" runat="server" GroupingText="All Waiting Times">
            <table>
                <thead>
                    <tr>
                        <th>
                            <asp:Label ID="lblTime" runat="server" Text="Waiting Time" /></th>
                        <th>
                            </th>
                        <th>
                            </th>

                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rpt_all" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td id="waititime_td"><%#Eval("wait_time") %></td>
                                <td>
                                    <asp:LinkButton ID="btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval("Id")%>' OnCommand="subAdmin" />
                                    <td>
                                        <asp:LinkButton ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("Id")%>' OnCommand="subAdmin" />
                                    </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

        </asp:Panel><%--end alert_pnl_all--%>
<%--Update Panel Starts here--%>
        <asp:Panel ID="pnl_update" runat="server" GroupingText="Update Waiting Times">
            <table id="up_table_waittimes">
                <thead>
                    <tr>
                        <th><asp:Label ID="lbl_waittimeU" runat="server" Text="Waiting Time" /></th>
                        <th><asp:Label ID="lbl_checkedInU" runat="server" Text="Checked In Time" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rpt_update" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td id="waittime_td">
                                    <asp:HiddenField ID="hdf_idU" runat="server" Value='<%#Eval("Id")%>'  />
                                    <asp:TextBox ID="txt_waittimeU" runat="server" Text='<%#Eval("wait_time")%>' />

                                </td>
                                <td id="checkin_td">
                                    <asp:TextBox ID="txt_checkinU" runat="server" Text='<%#Eval("checked_in")%>' />

                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btn_update" runat="server" Text="Update" CommandName="Update" ValidationGroup="update" />
                                    <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" CauseValidation="false" />
                                </td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>
                </tbody>
            </table>
        </asp:Panel>
        <%--Delete Panel--%>
        <asp:Panel ID="pnl_delete" runat="server" GroupingText="Delete Waiting Time">
            <table>
                <thead>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="lbl_delete" runat="server" Text="Are you sure you want to delete this item?" />
                        </td>
                    </tr>
                    <tr>
                        <th><asp:Label ID="lbl_waittimeD" runat="server" Text="Wait Time" /></th>
                        <th><asp:Label ID="lbl_checkinD" runat="server" Text="Check In" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rpt_delete" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="hdf_idD" runat="server" Value='<%#Eval("Id")%>' />
                                    <asp:Label ID="txt_waittimeD" runat="server" Value='<%#Eval("wait_time")%>' />  
                                </td>
                                      <td>
                                    
                                    <asp:Label ID="txt_checkinD" runat="server" Value='<%#Eval("checked_in")%>' />  
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" />
                                    <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" />
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

