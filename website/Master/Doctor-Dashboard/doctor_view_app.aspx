<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor-Dashboard/doctor.master" AutoEventWireup="true" CodeFile="doctor_view_app.aspx.cs" Inherits="Doctor_Dashboard_Default" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" Runat="Server">
    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="View My Appointment" CssClass="col-lg-9 admin_header"/>       
        </div>
        
        <div>
            <asp:Label ID="lbl_add" runat="server" Text="Add a new appointment" />
            <br /><br />
            <asp:Label ID="lbl_pnameI" runat="server" Text="Patient Name" AssociatedControlID="txt_pnameI" />
            <br />
            <asp:TextBox ID="txt_pnameI" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_pnameI" runat="server" Text="*Required" ControlToValidate="txt_pnameI" ValidationGroup="insert" />
            <br />
            <asp:Label ID="lbl_dnameI" runat="server" Text="Doctor" AssociatedControlID="txt_dnameI" />
            <br />
            <asp:TextBox ID="txt_dnameI" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_dnameI" runat="server" Text="*Required" ControlToValidate="txt_dnameI" ValidationGroup="insert" />
            <br />
            <asp:Label ID="lbl_dateI" runat="server" Text="Date" AssociatedControlID="txt_dateI" />
            <br />
            <asp:TextBox ID="txt_dateI" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_dateI" runat="server" Text="*Required" ControlToValidate="txt_dateI" ValidationGroup="insert" />
            <br />
            <asp:Label ID="lbl_titleI" runat="server" Text="Appointment" AssociatedControlID="txt_titleI" />
            <br />
            <asp:TextBox ID="txt_titleI" runat="server" />
            <asp:RequiredFieldValidator ID="rfv_titleI" runat="server" Text="*Required" ControlToValidate="txt_titleI" ValidationGroup="insert" />
            <br /><br />
            <asp:Button ID="btn_insert" runat="server" Text="Insert" CommandName="Insert" OnCommand="subAdmin" ValidationGroup="insert" />
            <br />
            <br />
            <asp:Panel ID="pnl_all" runat="server" GroupingText="Appointments">
                <table>
                    <thead>
                        <tr>
                            <th><asp:Label ID="lbl_pname" runat="server" Text="Patient Name" /></th>
                            <th><asp:Label ID="lbl_dname" runat="server" Text="Doctor" /></th>
                            <th><asp:Label ID="lbl_date" runat="server" Text="Date" /></th>
                            <th><asp:Label ID="lbl_title" runat="server" Text="Appointment" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_all" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval ("patient_name") %></td>
                                    <td><asp:LinkButton ID="btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval ("Id") %>' OnCommand="subAdmin" /></td>
                                    <td><asp:LinkButton ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval ("Id") %>' OnCommand="subAdmin" /></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <br /><br />
                <asp:Label ID="lbl_message" runat="server" />
            </asp:Panel>
            <asp:Panel ID="pnl_update" runat="server" GroupingText="Update Appointment Details">
                <table>
                    <thead>
                        <tr>
                            <th><asp:Label ID="lbl_pnameU" runat="server" Text="Patient Name" /></th>
                            <th><asp:Label ID="lbl_dnameU" runat="server" Text="Doctor" /></th>
                            <th><asp:Label ID="lbl_dateU" runat="server" Text="Date" /></th>
                            <th><asp:Label ID="lbl_titleU" runat="server" Text="Appointment" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_update" runat="server" OnItemCommand="subUpDel">
                            <ItemTemplate>
                                <tr>
                                    <td><asp:HiddenField ID="hdf_idU" runat="server" Value='<%#Eval ("Id") %>' />
                                        <asp:TextBox ID="txt_pnameU" runat="server" Text='<%#Eval ("patient_name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_dnameU" runat="server" Text='<%#Eval ("doctor_name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_dateU" runat="server" Text='<%#Eval ("date-time") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_titleU" runat="server" Text='<%#Eval ("appointment_title") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td><asp:RequiredFieldValidator ID="rfv_pnameU" runat="server" Text="*Required" ControlToValidate="txt_pnameU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfv_dnameU" runat="server" Text="*Required" ControlToValidate="txt_dnameU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfv_dateU" runat="server" Text="*Required" ControlToValidate="txt_dateU" ValidationGroup="update" /></td>
                                     <td><asp:RequiredFieldValidator ID="rfv_titleU" runat="server" Text="*Required" ControlToValidate="txt_titleU" ValidationGroup="update" /></td>
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
            <asp:Panel ID="pnl_delete" runat="server" GroupingText="Delete Appointment">
                <table>
                    <thead>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="lbl_delete" runat="server" Text="Are you sure you want to delete this appointment?" />
                            </td>
                        </tr>
                        <tr>
                            <th><asp:Label ID="lbl_pnameD" runat="server" Text="Patient Name" /></th>
                            <th><asp:Label ID="lbl_dnameD" runat="server" Text="Doctor" /></th>
                            <th><asp:Label ID="lbl_dateD" runat="server" Text="Date" /></th>
                            <th><asp:Label ID="lbl_titleD" runat="server" Text="Appointment" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rpt_delete" runat="server" OnItemCommand="subUpDel">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:HiddenField ID="hdf_idD" runat="server" Value='<%#Eval ("Id") %>' />
                                        <asp:Label ID="lbl_pnameD" runat="server" Text='<%#Eval ("patient_name") %>' />
                                        <asp:Label ID="lbl_dnameD" runat="server" Text='<%#Eval ("doctor_name") %>' />
                                        <asp:Label ID="lbl_dateD" runat="server" Text='<%#Eval ("date-time") %>' />
                                        <asp:Label ID="lbl_titleD" runat="server" Text='<%#Eval ("appointment_title") %>' />

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
</asp:Content>

