<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="admincontact.aspx.cs" Inherits="adminContact" Theme="mainStyle" %>

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
                        
                        <th class="moveOver">
                          <asp:Label ID="contact_fname" runat="server" Text="First Name" /><br /></th>
                        
                        <th class="moveOver">
                            <asp:Label ID="contact_lname" runat="server" Text="Last Name" /><br />
                            </th>
                       <%-- <th><asp:Label ID="contact_dept" runat="server" Text="Department" />                               </th>--%>
                  <th class="moveOver"><asp:Label ID="contact_email" runat="server" Text="Email" /><br /></th>
                    </tr>
                </thead>
                <tbody>
                  
                   
                    <asp:DataList ID="dtl_updel_all" runat="server">
                         <ItemTemplate>
                                <tr>
                                    <td class="moveOver"><%#Eval ("firstname") %></td>
                                    <td class="moveOver"><%#Eval ("lastname") %></td>
                                    <td class="moveOver"><%#Eval ("email") %></td>
                                    
                                    <td class="moveOver"><asp:LinkButton ID="btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval ("Id") %>' OnCommand="subAdmin" /></td>
                                    <td><asp:LinkButton ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval ("Id") %>' OnCommand="subAdmin" /></td>
                                </tr>
                            </ItemTemplate>

                    </asp:DataList>
               
                </tbody>
            </table><br /><br />
             <asp:Label ID="lbl_output" runat="server" />
        </asp:Panel><%--end pnl_all--%>
<%--Update Panel Starts here--%>
        <asp:Panel ID="pnl_update" runat="server" GroupingText="Update Contacts">
            <table id="update_table">
                <thead>
                    <tr>
                        <th class="moveOver"><asp:Label ID="lbl_fnameU" runat="server" Text="First Name" /></th>
                        <th class="moveOver"><asp:Label ID="lbl_lnameU" runat="server" Text="Last Name" /></th>
                       <%-- <th><asp:Label ID="lbl_deptU" runat="server" Text="Department" />
                        </th>--%>
                        <th class="moveOver"><asp:Label ID="lbl_emailU" runat="server" Text="Email" /></th>
                       <%-- <th><asp:Label ID="lbl_messageU" runat="server" Text="Message" /></th>--%>
                    </tr>
                </thead>
                <tbody>
                    <asp:DataList ID="dtl_update" runat="server" OnItemCommand="subUpDel">
                        <ItemTemplate>
                            <tr>
                                <td id="title_td">
                                    <asp:HiddenField ID="hdf_idU" runat="server" Value='<%#Eval("Id")%>'  />
                                    <asp:TextBox ID="txt_fnameU" runat="server" Text='<%#Eval("firstname")%>' />
                                    <td class="moveOver">
                                    <asp:TextBox ID="txt_lnameU" runat="server" Text='<%#Eval("lastname") %>' /></td>
                                <%--  <td>  <asp:DropDownList ID="ddl_deptU" runat="server" DataValueField='<%#Eval("department") %>' /></td>--%>
                                   <td class="moveOver"> <asp:TextBox ID="txt_emailU" runat="server" Text='<%#Eval("email")%>' /></td>
                                   <%-- <td><asp:TextBox ID="txt_messageU" runat="server" Text='<%#Eval("message") %>' />--%>

                                </td>
                               
                            </tr>
                            
                             <tr>
                                    <td><asp:RequiredFieldValidator ID="rfv_fnameU" runat="server" Text="*Required" ControlToValidate="txt_fnameU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfv_lnameU" runat="server" Text="*Required" ControlToValidate="txt_lnameU" ValidationGroup="update" /></td>
                                    <td><asp:RequiredFieldValidator ID="rfv_emailU" runat="server" Text="*Required" ControlToValidate="txt_emailU" ValidationGroup="update" /></td>
                                 <td>  <asp:RegularExpressionValidator ID="rev_email" runat="server" Text="Invalid Email Address" ControlToValidate="txt_emailU" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ValidationGroup="update" /></td>
                                </tr>
                             
                            <tr>
                                <td colspan="3">
                                    <asp:Button ID="btn_update" runat="server" Text="Update" CommandName="Update"  ValidationGroup="update"/>
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
                            <asp:Label ID="lbl_delete" runat="server" Text="Are you sure you want to delete this contact?" />
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
                                    <asp:HiddenField ID="hdf_idD" runat="server" Value='<%#Eval("Id")%>' />
                                    <asp:Label ID="lbl_fnameD" runat="server" Value='<%#Eval("firstname") %>' /></td>
                                 <td>
                                     <asp:Label ID="lbl_lnameD" runat="server" Value='<%#Eval("lastname") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="lbl_deptD" runat="server" Value='<%#Eval("department") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="lbl_emailD" runat="server" Value='<%#Eval("email") %>' />
                                 </td>
                                  <td>
                                    
                                    <asp:Label ID="lbl_messageD" runat="server" Value='<%#Eval("Message")%>' />  
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

