<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="news-event.aspx.cs" Inherits="news_event" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">

      
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="News & Events" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Home.aspx" />
        </div>


        <asp:Panel ID="timeline_pnl_insert" runat="server" GroupingText="Insert News & Events">

        <asp:Label ID="timeline_lbl_output" runat="server" />
        <br />
        <br />
        <asp:Label ID="timeline_image_insert" runat="server" Text="Image" AssociatedControlID="timeline_txt_imageI" CssClass="admin_label" />
        <br />
        <br />
        <asp:TextBox ID="timeline_txt_imageI" runat="server" />
        <br />
        <br />
        <asp:Label ID="timeline_lbl_text"  runat="server" Text="Content" AssociatedControlID="timeline_txt_textI" CssClass="admin_label" />
        <br />
        <asp:TextBox ID="timeline_txt_textI" TextMode="MultiLine" runat="server" />
        <br />
        <asp:Label ID="timeline_lbl_date" runat="server" Text="Date" AssociatedControlID="timeline_txt_dateI" CssClass="admin_label" />
        <br />
        <asp:TextBox ID="timeline_txt_dateI" runat="server" />

        <asp:Button ID="timeline_btn_insert" runat="server" Text="Insert" CommandName="Insert" Display="Dynamic" OnCommand="subAdmin" ValidationGroup="insert" />
        <br />
        <br />
        </asp:Panel>


        <asp:Panel ID="timeline_pnl_all" runat="server" GroupingText="All News">
            <table>
                <thead>
                    <tr>
                        <th>
                            <asp:Label ID="timeline_lbl_textS" runat="server" Text="Content" /></th>
                        <th>
                            </th>
                        <th>
                            </th>

                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="timeline_rpt_all" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td id="timeline_text_td"><%#Eval("text") %></td>
                                <td>
                                    <asp:LinkButton ID="timeline_btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval("id")%>' OnCommand="subAdmin" />
                                    <td>
                                        <asp:LinkButton ID="timeline_btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("id")%>' OnCommand="subAdmin" />
                                    </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

        </asp:Panel>
        <asp:Panel ID="timeline_pnl_update" runat="server" GroupingText="Update News & Events">
            <table id="timeline_up_table">
                <thead>
                    <tr>
                        <th><asp:Label ID="timeline_lbl_titleU" runat="server" Text="Title" /></th>
                        <th><asp:Label ID="timeline_lbl_imageU" runat="server" Text="Image" /></th>
                        <th><asp:Label ID="timeline_lbl_dateU" runat="server" Text="Date" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="timeline_rpt_update" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td id="timeline_title_td">
                                    <asp:HiddenField ID="timeline_hdf_idU" runat="server" Value='<%#Eval("id")%>'  />
                                    <asp:TextBox ID="timeline_txt_textU" CssClass="alert_up_title" runat="server" Text='<%#Eval("text")%>' />

                                </td>
                                <td id="timeline_image_td">
                                    <asp:TextBox ID="timeline_txt_imageU" runat="server" Text='<%#Eval("image")%>'  />

                                </td>
                                <td id="timeline_date_td">
                                    <asp:TextBox ID="timeline_txt_dateU" runat="server" Text='<%#Eval("date")%>'  />

                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="timeline_btn_update" runat="server" Text="Update" CommandName="Update" ValidationGroup="update" />
                                    <asp:Button ID="timeline_btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" CauseValidation="false" />
                                </td>
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>
                </tbody>
            </table>
        </asp:Panel>
        <asp:Panel ID="timeline_pnl_delete" runat="server" GroupingText="Delete News">
            <table>
                <thead>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="timeline_lbl_delete" runat="server" Text="Are you sure you want to delete this item?" />
                        </td>
                    </tr>
                    <tr>
                        <th><asp:Label ID="timeline_lbl_textD" runat="server" Text="Content" /></th>
                        <th><asp:Label ID="timeline_lbl_imageD" runat="server" Text="Image" /></th>
                        <th><asp:Label ID="timeline_lbl_dateD" runat="server" Text="Date" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="timeline_rpt_delete" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="timeline_hdf_idD" runat="server" Value='<%#Eval("id")%>' />
                                    <asp:Label ID="timeline_txt_textD" runat="server" Value='<%#Eval("text")%>' />  
                                </td>
                                <td>
                                    
                                    <asp:Label ID="timeline_txt_imageD" runat="server" Value='<%#Eval("image")%>' />  
                                </td>
                                <td>
                                    
                                    <asp:Label ID="timeline_txt_dateD" runat="server" Value='<%#Eval("date")%>' />  
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="timeline_btn_delete" runat="server" Text="Delete" CommandName="Delete" />
                                    <asp:Button ID="timeline_btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" />
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

