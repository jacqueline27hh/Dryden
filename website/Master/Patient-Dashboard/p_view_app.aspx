<%@ Page Title="" Language="C#" MasterPageFile="~/Patient-Dashboard/patient.master" AutoEventWireup="true" CodeFile="p_view_app.aspx.cs" Inherits="Patient_Dashboard_Default" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" Runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row col-lg-8" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="View My Appointments" CssClass="col-lg-9 admin_header"/>
        <br /><br />
        <%--<table border="1">
            <thead>
                <tr>
                    <th><asp:Label ID="lbl_appTitle" runat="server" Text="Appointment" /></th>
                    <th><asp:Label ID="lbl_date" runat="server" Text="Date" /></th>
                    <th><asp:Label ID="lbl_doctor" runat="server" Text="Doctor" /></th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rpt_all" runat="server" >
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("appointment_title") %></td>
                            <td><%#Eval("date_time") %></td>
                         </tr>
                    </ItemTemplate>
                 </asp:Repeater>
              </tbody>
           </table>       --%>
            <asp:GridView ID="grd_all" runat="server" GridLines="None" CellPadding="6" CellSpacing="6">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <%--<table cellpadding="6" cellspacing="6">--%>
                                <%--<tr>
                                    <th><asp:Label ID="lbl_appTitle" runat="server" Text="Appointment" /></th>
                                    <th><asp:Label ID="lbl_date" runat="server" Text="Date" /></th>
                                </tr>--%>
                               <%-- <tr>
                                    <td><%#Eval("appointment_title") %></td>
                                    <td><%#Eval("date_time") %></td>
                                </tr>--%>
                            <%--</table>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>

</asp:Content>

