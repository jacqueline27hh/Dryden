﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="admincontact.aspx.cs" Inherits="adminContact" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Contact" CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Contact.aspx?tabIndex=2" />
        </div>
        
         <asp:Panel ID="pnl_all" runat="server" GroupingText="All Contacts">
            <table>
                <thead>
                    <tr>
                        <th>
                            <asp:Label ID="contact_fname" runat="server" Text="First Name" /></th>
                        <th>
                            </th>
                        <th>
                            <asp:Label ID="contact_lname" runat="server" Text="Last Name" />
                            </th>
                        <th><asp:Label ID="contact_dept" runat="server" Text="Department" /></th>
<th><asp:Label ID="contact_email" runat="server" Text="Email" /></th>
                    </tr>
                </thead>
                <tbody>
                  
                   
                    <asp:DataList ID="dtl_updel_all" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="lbl_id" runat="server" Text="ID" />
                                    <asp:Label ID="lblid" runat="server" Text='<%#Eval("id") %>' /></td>
                               <td>
                                   <asp:Label ID="lbl_fname" runat="server" Text="First Name" />
                                   <asp:Label ID="lblfname" runat="server" Text='<%#Eval("firstname") %>' />
                               </td>
                                <td>
                                                   <asp:Label ID="lbl_lname" runat="server" Text="Last Name" />
                                   <asp:Label ID="lbllname" runat="server" Text='<%#Eval("lastname") %>' />
                                </td>
                                <td>
                                                   <asp:Label ID="lbl_dept" runat="server" Text="Department" />
                                   <asp:Label ID="lbldepartment" runat="server" Text='<%#Eval("department") %>' />
                                </td>
                                <td>
                                                   <asp:Label ID="lbl_email" runat="server" Text="Email" />
                                   <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>' />
                                </td>
                                <td>
                                                   <asp:Label ID="lbl_message" runat="server" Text="Message" />
                                   <asp:Label ID="lblmessage" runat="server" Text='<%#Eval("message") %>' />
                                </td>
                            
                            <td>
                                    <asp:LinkButton ID="btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval("id")%>' OnCommand="subAdmin" />
                                    <td>
                                        <asp:LinkButton ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("id")%>' OnCommand="subAdmin" />
                                        </td></tr>
                        </ItemTemplate>
                    </asp:DataList>
               
                </tbody>
            </table>

        </asp:Panel><%--end pnl_all--%>
<%--Update Panel Starts here--%>
        <asp:Panel ID="pnl_update" runat="server" GroupingText="Update Contacts">
            <table id="update_table">
                <thead>
                    <tr>
                        <th><asp:Label ID="lbl_fnameU" runat="server" Text="First Name" /></th>
                        <th><asp:Label ID="lbl_lnameU" runat="server" Text="Last Name" /></th>
                        <th><asp:Label ID="lbl_deptU" runat="server" Text="Department" />
                        </th>
                        <th><asp:Label ID="lbl_emailU" runat="server" Text="Email" /></th>
                        <th><asp:Label ID="lbl_messageU" runat="server" Text="Message" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:DataList ID="dtl_update" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td id="title_td">
                                    <asp:HiddenField ID="hdf_idU" runat="server" Value='<%#Eval("id")%>'  />
                                    <asp:TextBox ID="txt_fnameU" runat="server" Text='<%#Eval("firstname")%>' />
                                    <td>
                                    <asp:TextBox ID="txt_lnameU" runat="server" Text='<%#Eval("lastname") %>' /></td>
                                  <td>  <asp:TextBox ID="txt_deptU" runat="server" Text='<%#Eval("department") %>' /></td>
                                   <td> <asp:TextBox ID="txt_emailU" runat="server" Text='<%#Eval("email")%>' /></td>
                                    <td><asp:TextBox ID="txt_messageU" runat="server" Text='<%#Eval("message") %>' />

                                </td>
                               
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btn_update" runat="server" Text="Update" CommandName="Update" />
                                    <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" CauseValidation="false" />
                                </td>
                            </tr>
                        </ItemTemplate>

                    </asp:DataList>
                </tbody>
            </table>
        </asp:Panel>
        <%--Delete Panel--%>
        <asp:Panel ID="pnl_delete" runat="server" GroupingText="Delete Contact">
            <table>
                <thead>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="lbl_delete" runat="server" Text="Are you sure you want to delete this item?" />
                        </td>
                    </tr>
                    <tr>
                        <th><asp:Label ID="lbl_fnameD" runat="server" Text="First Name" /></th>
                        <th><asp:Label ID="lbl_lnameD" runat="server" Text="Last Name" /></th>
                        <th><asp:Label ID="lbl_deptD" runat="server" Text="Department" /></th>
                        <th><asp:Label ID="lbl_emailD" runat="server" Text="Email" /></th>
                        <th><asp:Label ID="lbl_messageD" runat="server" Text="Message" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:DataList ID="dtl_del" runat="server" OnItemCommand="subUpDel">
                       <ItemTemplate>
                             <tr>
                                <td>
                                    <asp:HiddenField ID="hdf_idD" runat="server" Value='<%#Eval("id")%>' />
                                    <asp:Label ID="txtfnameD" runat="server" Value='<%#Eval("firstname") %>' /></td>
                                 <td>
                                     <asp:Label ID="txtlnameD" runat="server" Value='<%#Eval("lastname") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="txtdeptD" runat="server" Value='<%#Eval("department") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="txtemailD" runat="server" Value='<%#Eval("email") %>' />
                                 </td>
                                  <td>
                                    
                                    <asp:Label ID="txt_messageD" runat="server" Value='<%#Eval("Message")%>' />  
                                </td>
                       
                            
                             
                            
                            
                                <td colspan="3">
                                    <asp:Button ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" />
                                    <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                </td>
                           
                      </ItemTemplate>
                    </asp:DataList>
                       

                 
                </tbody>
            </table>
        </asp:Panel>

        

    </div>
    <%--end admin_form--%>
</asp:Content>

