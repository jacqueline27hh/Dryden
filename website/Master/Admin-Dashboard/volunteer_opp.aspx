<%@ Page Title="" Language="C#" MasterPageFile="~/Admin-Dashboard/admin.master" AutoEventWireup="true" CodeFile="volunteer_opp.aspx.cs" Inherits="volunteer_opp" Theme="mainStyle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_admin_d" runat="Server">

    <div class="col-sm-8 admin_form">
   
       

        <div class="row" id="admin_header_wrapper">
        <asp:Label ID="admin_lbl_header" runat="server" Text="Volunteer Opportunities " CssClass="col-lg-9 admin_header"/>
        <asp:LinkButton ID="admin_view_changes" CssClass="col-lg-2 admin_view_live" runat="server" Text="<i class='fa fa-eye'></i> View Live" PostBackUrl="~/Career.aspx?tabIndex=3" />
        </div>

        <asp:Panel ID="pnl_all" runat="server" GroupingText="All Volunteer Applicants">
               <table>
                    <thead>
                        <tr>
                            <th><asp:Label ID="lbl_fname" runat="server" Text="First Name" /></th>
                            <th><asp:Label ID="lbl_lname" runat="server" Text="Last Name" /></th>
                            <th><asp:Label ID="lbl_email" runat="server" Text="Email" /></th>
                            <th><asp:Label ID="lbl_contact" runat="server" Text="Contact" /></th>
                            <th><asp:Label ID="lbl_voltype" runat="server" Text="Volunteer type" /></th>
                        </tr>
                    </thead>
                   <tbody>
                       <asp:ListView ID="lst_all" runat="server" OnItemCommand="subAdmin" OnItemUpdating="subUP" OnItemDeleting="subDel">
                          <ItemTemplate>
                                                           
                                <tr>
                                    <td><asp:Label ID="lblfname" runat="server" Text="First Name" />
                                <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("firstname") %>' /></td>
                                    <td><asp:Label ID="lbllname" runat="server" Text="Last Name" />
                       <asp:Label ID="lbl_lname" runat="server" Text='<%#Eval("lastname") %>' /></td>
                                    <td><asp:Label ID="lblemail" runat="server" Text="Email" />
                                   <asp:Label ID="lbl_email" runat="server" Text='<%#Eval ("email") %>' /></td>
                                    
                                    <td><asp:Label ID="lblcontact" runat="server" Text="Contact" />
                                   <asp:Label ID="lbl_contact" runat="server" Text='<%#Eval ("phone") %>' /></td>
                                    <td><asp:Label ID="lblvoltype" runat="server" Text="Volunteer type" />
                                        <asp:Label ID="lbl_voltype" runat="server" Text='<%#Eval("volunteer_type") %>' />
                                    </td>
                                    <td><asp:LinkButton ID="btn_update" runat="server" Text="Update" CommandName="Update" CommandArgument='<%#Eval("vol_Id") %>'  /></td>
                                    <td><asp:LinkButton ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("vol_Id") %>'  />  </td>
                                 
                                </tr>
                         </ItemTemplate>
                         
  
                       </asp:ListView>
                   </tbody>
                  </table>
        </asp:Panel>
        <asp:Panel ID="update_pnl" runat="server" GroupingText="Update Applications">
            <table>
                <thead>
                    <tr>
                        <%--<th><asp:Label ID="lbl_IdU" runat="server" Text="Id" /></th>--%>
                        <th><asp:Label ID="lblfnameU" runat="server" Text="Firstname" /></th>
                        <th><asp:Label ID="lbllnameU" runat="server" Text="Lastname" /></th>
                        <th><asp:Label ID="lblemailU" runat="server" Text="Email" /></th>
                        <th><asp:Label ID="lblcontactU" runat="server" Text="Contact" /></th>
                        <th><asp:Label ID="lblvoltypeU" runat="server" Text="Volunteer Type" /></th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Label ID="lblmsg" runat="server" />

                    <asp:ListView ID="lst_update" runat="server" OnItemCommand="subupdel" OnItemUpdating="subUP">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="hdf_id" runat="server" Value='<%#Eval("vol_Id") %>' />
                                    <asp:TextBox ID="txtfnameU" runat="server" Text='<%#Eval("firstname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtlnameU" runat="server" Text='<%#Eval("lastname") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtemailU" runat="server" Text='<%#Eval("email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcontactU" runat="server" Text='<%#Eval ("phone") %>' />
                                </td>
                                <td> 
                                    <asp:DropDownList ID="ddlvoltypeU" runat="server" DataTextField='<%#Eval("volunteer_type") %>'>
                                        <asp:ListItem Value="General" />
                                        <asp:ListItem Value="Administrative" />
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfv_fname" runat="server" Text="*Required" ControlToValidate="txtfnameU" ValidationGroup="update" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfv_lname" runat="server" Text="*Required" ControlToValidate="txtlnameU" ValidationGroup="update" />
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfv_email" runat="server" Text="*Required" ControlToValidate="txtemailU" ValidationGroup="update" />
                                    <asp:RegularExpressionValidator ID="rev_email" runat="server" Text="Invalid Email Address" ControlToValidate="txtemailU" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ValidationGroup="update" />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btn_update" runat="server" Text="Update" CommandName="Update" ValidationGroup="update" />
                                   
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </asp:Panel>

        <asp:Panel ID="pnl_delete" runat="server" GroupingText="Delete Records">
            <table>
                <thead>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_del" runat="server" Text="Are you sure you want to delete the selected record?" />
                        </td>
                    </tr>
                   
                </thead>
                <tbody>
                    <asp:ListView ID="lst_delete" runat="server" OnItemCommand="subupdel">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="hdf_idD" runat="server" Value='<%#Eval("vol_Id") %>' />
                                      <asp:TextBox ID="txtfnameU" runat="server" Text='<%#Eval("firstname") %>' />

                                </td>
                                <td>  <asp:TextBox ID="txtlnameU" runat="server" Text='<%#Eval("lastname") %>' /> </td>
                                 <td>
                                    <asp:TextBox ID="txtemailU" runat="server" Text='<%#Eval("email") %>' />
                                </td>
                                 <td>
                                    <asp:TextBox ID="txtcontactU" runat="server" Text='<%#Eval ("phone") %>' />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btndel" runat="server" Text="Delete" CommandName="Delete" />
                                    <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </tbody>
            </table>
        </asp:Panel>

        

    </div>
 <%-- end admin_form --%>
</asp:Content>

