<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Career.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div class="container" id="main">


        <div id="master_content">

            <div id="career_content_image">
            </div>
            <!-- end about_content_image-->

            <div class="row">

                <asp:Label runat="server" ID="lbl_test"></asp:Label>

                <div class="col-xs-12" id="career_nav">

                    <div class="tabbable">

                        <asp:ScriptManager runat="server" ID="scm_main" />




                        <div class="tab-content">

                            <asp:UpdatePanel ID="up_main" runat="server">
                                <ContentTemplate>

                                    <asp:Menu ID="career_nav_menu" runat="server" CssClass="nav nav-tabs " Orientation="Horizontal" OnMenuItemClick="switchTabs" StaticSelectedStyle-CssClass="active">
                                        <Items>
                                            <asp:MenuItem Text="Employment Opportunities" Selected="true" Value="0" />
                                            
                                            <asp:MenuItem Text="Apply for Career" Value="1" />
                                            <asp:MenuItem Text="Why Work Here" Value="2" />
                                            <asp:MenuItem Text="Volunteer Program" Value="3" />
                                     
                                            
        

                                          
                                        </Items>
                                    </asp:Menu>



                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <p>Employment Opportunities</p>
                                            <table>
                                                <tr>
                                                    <th>Job Title</th>
                                                    <th>Description</th>
                                                    <th>Date</th>
                                                </tr>
                                                <tr>
                                                    <td><asp:Label ID="lbl_jtitle" runat="server" Text='<%#Bind("title") %>' /></td>
                                                    <td><asp:Label ID="lbl_jdesc" runat="server" Text='<%#Bind("description") %>' /></td>
                                                    <td><asp:Label ID="lbl_jdate" runat="server" Text='<%#Bind("last_date_apply") %>' /></td>
                                                </tr>
                                            </table>
                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <p>
                                               
								               How To Apply
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view3" runat="server">
                                            <p>
                                                Apply for Career
                                               
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view4" runat="server">
                                           
							
                                            
                                                                              <asp:Label ID="lblfname" runat="server" Text="First Name" AssociatedControlID="txtfname" />
    <asp:TextBox ID="txtfname" runat="server" />
    <br /><br />
    <asp:Label ID="lbllname" runat="server" Text="Last Name" AssociatedControlID="txtlname" />
    <asp:TextBox ID="txtlname" runat="server" />
    <br /><br />
    <asp:Label ID="lblage" runat="server" Text="Age" AssociatedControlID="txtage" />
    <asp:TextBox ID="txtage" runat="server" />
    <br /><br />
    <asp:Label ID="lblgender" runat="server" Text="Gender" />
    <asp:RadioButtonList ID="rdb_gender" RepeatColumns="2" RepeatDirection="Horizontal" runat="server">
        <asp:ListItem Text="Male" />
        <asp:ListItem Text="Female" />
    </asp:RadioButtonList>
    <br /><br />
    <asp:Label ID="lblcontact" runat="server" Text="Contact No" AssociatedControlID="txtcontact" />
    <asp:TextBox ID="txtcontact" runat="server" />
    <br /><br />
    <asp:Label ID="lblemail" runat="server" Text="E-mail" AssociatedControlID="txtemail" />
    <asp:TextBox ID="txtemail" runat="server" />
    <br /><br />
    <asp:Label ID="lblschool" runat="server" Text="High School" AssociatedControlID="txtschool" />
    <asp:TextBox ID="txtschool" runat="server" />
    <br /><br />
    <asp:Label ID="lbl_title" runat="server" Text="Upload your Resume" /><br />
    <asp:Label ID="lblresume" runat="server" Text="Resume" />
    <asp:TextBox ID="txtresume" runat="server" />
    <asp:Button ID="btnbrowse" runat="server" Text="Browse" CssClass="" />
    <br />
    <asp:Label ID="lblavailable" runat="server" Text="Availability" />
    <asp:CheckBoxList ID="chk_availability" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
        <asp:ListItem Text="Monday" />
        <asp:ListItem Text="Tuesday" />
        <asp:ListItem Text="Wednesday" />
        <asp:ListItem Text="Thursday" />
        <asp:ListItem Text="Friday" />
        <asp:ListItem Text="Saturday" />
        <asp:ListItem Text="Sunday" />
    </asp:CheckBoxList>
    <br /><br />
  <%--  <asp:Button ID="btnapply" runat="server" OnClick="subapply"/>
    <asp:Button ID="btncancel" runat="server" OnClick="subcancel"/>--%>
                                        </asp:View>
                                     

                                        
                                     
                                    </asp:MultiView>

                                </ContentTemplate>
                            </asp:UpdatePanel>



                        </div>
                        <!-- end tab-content -->
                    </div>
                    <!-- end tabbable -->
                </div>
                <!-- end col-sm-12 -->
            </div>
            <!-- end row -->

        </div>
        <!-- master_content -->
    </div>
</asp:Content>

