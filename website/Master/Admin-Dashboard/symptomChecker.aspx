<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="symptomChecker.aspx.cs" Inherits="s_checker" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Symptom Checker" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/patient-visitor.aspx?tabIndex=4" />
        </div>
        <br />
        <br />
        <div>
            <asp:Button ID="btn_show_insert" runat="server" Text="Show Insert" OnClick="subShowInsert" />
            <asp:Button ID="btn_show_edit" runat="server" Text="Show Edit" OnClick="subShowEdit" />
            <br />
            <asp:Label runat="server" ID="lbl_message" />
            <br />

            <asp:Panel ID="pnl_insert" runat="server" Visible="false">
                <asp:ValidationSummary ID="vs_insert" runat="server" ValidationGroup="insert" />
                Question
            <br />
                <asp:TextBox ID="txt_nameI" runat="server" />
                <asp:RequiredFieldValidator ID="rfv_nameI" runat="server" Text="*" ControlToValidate="txt_nameI" ValidationGroup="insert" ErrorMessage="Please insert a product name" />
                <br />
                <br />
                
                <asp:Button ID="btn_insert" runat="server" Text="Insert" CommandName="Insert" OnCommand="subAdmin" ValidationGroup="insert" />
            </asp:Panel>


            <asp:Panel ID="pnl_edit" runat="server" Visible="false">
                <asp:DropDownList ID="ddl_edit" runat="server" OnSelectedIndexChanged="subChangeEdited" AutoPostBack="true" />
                <table>
                    <tr>
                        <th>Question</th>
                       
                       <%--<th colspan="1"></th>--%>
                    </tr>

                    <asp:ListView ID="lv_all" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td id="quiz_td_edit">

                                    <asp:HiddenField ID="hdf_idE" runat="server" Value='<%#Eval("Id") %>' />
                                    <asp:TextBox ID="txt_nameE" runat="server" Text='<%#Bind("Questions") %>' />
                                    <br />
                                   
                                    <asp:RequiredFieldValidator ID="rfv_nameE" runat="server" Text="*" ControlToValidate="txt_nameE" ValidationGroup="edit" ErrorMessage="Please insert a product name" />
                                </td>
                            </tr>
                            <tr>

                                <br />
                                
                                <td id="quiz_td_edit_btn">
                                    <asp:Button ID="btn_update" runat="server" Text="Update" CommandName="Update_This" ValidationGroup="edit" />
                                    <asp:Button ID="btn_delete" runat="server" Text="Delete" CommandName="Delete_This" OnClientClick="return confirm('Confirm delete?');" ValidationGroup="edit" />
                                    <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CommandName="Cancel_This" CausesValidation="false" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </table>
            </asp:Panel>
        </div>
        

        

    </div>
    <%--end admin_form--%>
</asp:Content>

