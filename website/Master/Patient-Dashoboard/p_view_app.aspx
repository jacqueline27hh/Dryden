<%@ Page Title="" Language="C#" MasterPageFile="~/Patient-Dashoboard/patient.master" AutoEventWireup="true" CodeFile="p_view_app.aspx.cs" Inherits="Patient_Dashoboard_Default" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" Runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="View My Appointment" CssClass="col-lg-9 admin_header"/>
        <table border="1">
            <thead>
                <tr>
                    <th><asp:Label ID="lbl_appTitle" runat="server" Text="Appointment" /></th>
                    <th><asp:Label ID="lbl_date" runat="server" Text="Date" /></th>
                    <th><asp:Label ID="lbl_doctor" runat="server" Text="Doctor" /></th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rpt_all" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("appointment_title") %></td>
                            <td><%#Eval("date-time") %></td>
                            <td><%#Eval("doctor") %></td>
                         </tr>
                    </ItemTemplate>
                 </asp:Repeater>
              </tbody>
           </table>       
        </div>
    </div>

</asp:Content>

