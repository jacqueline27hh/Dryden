﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Patient-Dashboard/patient.master" AutoEventWireup="true" CodeFile="p_view_app.aspx.cs" Inherits="Patient_Dashboard_Default" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" Runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row col-lg-8" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="View My Appointments" CssClass="col-lg-9 admin_header moveDown"/>
        <br /><br /><br />
        <table>
            <thead>
                <tr>
                    
                    <th class="moveOver moveDown"><asp:Label ID="lbl_patient" runat="server" Text="Patient" /></th>
                    <th class="moveOver moveDown"><asp:Label ID="lbl_appTitle" runat="server" Text="Appointment" /></th>
                    <%--<th class="moveOver moveDown"><asp:Label ID="lbl_doc" runat="server" Text="Doctor" /></th>--%>
                    <th class="moveOver moveDown"><asp:Label ID="lbl_date" runat="server" Text="Date" /></th>
                    <%--<th class="moveDown"><asp:Label ID="lbl_doctor" runat="server" Text="Doctor" /></th>--%>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rpt_all" runat="server" >
                    <ItemTemplate>
                        <tr>
                            <td class="moveOver"><%#Eval("patientName") %></td>
                            <td class="moveOver"><%#Eval("appointment_title") %></td>
                            <%--<td class="moveOver"><%#Eval("firstname") %></td>--%>
                            <td class="moveOver"><%#Eval("date_time") %></td>
                            <td></td>
                         </tr>
                    </ItemTemplate>
                 </asp:Repeater>
              </tbody>
           </table>       
            <%--<asp:GridView ID="grd_all" runat="server" GridLines="None" CellPadding="6" CellSpacing="6">
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
                       <%-- </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>

            <%--I did try another databound control but low and behold it failed me - I know you hate us using the repeater all the time, but it seems to work best and most importantly we want a functioning website not a variety of databound controls.--%>

        </div>
    </div>

</asp:Content>

