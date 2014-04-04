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
                                            <h1>Employment Opportunities</h1>
                                            <br />
                                            <%--<asp:Table ID="tbl_jobs" runat="server" CellPadding="20" HorizontalAlign="Center" GridLines="Both">
                                                <asp:TableRow>
                                                    <asp:TableHeaderCell>Job ID</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Job Title</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Description</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                                                    <asp:TableHeaderCell>&nbsp;</asp:TableHeaderCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell><asp:Label ID="lbl_jid" runat="server" Text='<%#Eval("id") %>' /></asp:TableCell>
                                                    <asp:TableCell><asp:Label ID="lbl_jtitle" runat="server" Text='<%#Eval("title") %>' /></asp:TableCell>
                                                    <asp:TableCell><asp:Label ID="lbl_jdesc" runat="server" Text='<%#Eval("description") %>' /></asp:TableCell>
                                                    <asp:TableCell><asp:Label ID="lbl_jdate" runat="server" Text='<%#Eval("last_date_apply") %>' /></asp:TableCell>
                                                    <asp:TableCell><asp:Button ID="btn_apply" runat="server" Text="Apply Now" /></asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>--%>
                                            <table border="1">
                                                <thead>
                                                    <tr>
                                                        <th><asp:Label ID="lbl_jobid" runat="server" Text="Job ID" /></th>
                                                        <th><asp:Label ID="lbl_job" runat="server" Text="Title" /></th>
                                                        <th><asp:Label ID="lbl_description" runat="server" Text="Description" /></th>
                                                        <th><asp:Label ID="lbl_date" runat="server" Text="Last Date To Apply" /></th>
                                                        <th>&nbsp;</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <asp:Repeater ID="rpt_all" runat="server">
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td><%#Eval("id") %></td>
                                                                <td><%#Eval("title") %></td>
                                                                <td><%#Eval("description") %></td>
                                                                <td><%#Eval("last_date_apply") %></td>
                                                                <td><asp:Button ID="btn_apply" runat="server" Text="Apply" CommandName="Insert" OnCommand="subApply" /></td>
                                                            </tr>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </tbody>
                                            </table>
                                        </asp:View>
<!--************************************ View 2 ************************************-->
                                        <asp:View ID="view2" runat="server">
                                            <h1>Apply for Career</h1>
                                            <asp:Label ID="lbl_msg" runat="server" />
                                            <br />
                                            <asp:Label ID="lbl_jobidI" runat="server" Text="Job ID" AssociatedControlID="ddl_jobids" />
                                            <asp:DropDownList ID="ddl_jobids" runat="server">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                            </asp:DropDownList>
                                            <br /><br />
                                            <asp:Label ID="lbl_fnameI" runat="server" Text="First Name" AssociatedControlID="txt_fnameI" />
                                            <asp:TextBox ID="txt_fnameI" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_fnameI" runat="server" Text="*Required" ControlToValidate="txt_fnameI" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_lnameI" runat="server" Text="Last Name" AssociatedControlID="txt_lnameI" />
                                            <asp:TextBox ID="txt_lnameI" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_lnameI" runat="server" Text="*Required" ControlToValidate="txt_lnameI" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_emailI" runat="server" Text="Email" AssociatedControlID="txt_emailI" />
                                            <asp:TextBox ID="txt_emailI" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_emailI" runat="server" Text="*Required" ControlToValidate="txt_emailI" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_phoneI" runat="server" Text="Phone Number" AssociatedControlID="txt_phoneI" />
                                            <asp:TextBox ID="txt_phoneI" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_phoneI" runat="server" Text="*Required" ControlToValidate="txt_phoneI" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_cvr" runat="server" Text="Upload your cover letter and resume" />
                                            <br /><br />
                                            <asp:Label ID="lbl_cv" runat="server" Text="Attached cover letter" />
                                            <asp:FileUpload id="ful_cv" runat="server" />
                                            <br /><br />
                                            <asp:Label ID="lbl_resume" runat="server" Text="Attach resume" />
                                            <asp:FileUpload id="ful_resume" runat="server" />
                                            <br /><br />
                                            <asp:Label ID="lbl_amsg" runat="server" Text="Leave a message" />
                                            <br />
                                            <asp:TextBox id="txt_msg" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                                            <br /><br />
                                            <asp:Button ID="btn_insert" runat="server" Text="Apply" ValidationGroup="insert" />
                                            <%--<asp:Button ID="btn_insert" runat="server" Text="Insert" CommandName="Insert" OnCommand="subInsert" ValidationGroup="insert" />--%>
                                        </asp:View>

                                        <asp:View ID="view3" runat="server">
                                            <p>
                                                Why Work Here
                                               
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view4" runat="server">
                                           
							
                                            <asp:Label ID="lbl_msgV" runat="server" />
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
    <asp:FileUpload ID="file_up" runat="server" />
 <%--   <asp:TextBox ID="txtresume" runat="server" />--%>
    <%--<asp:Button ID="btnbrowse" runat="server" Text="Browse" OnClick="subupload" />--%>
                                            <asp:Button ID="btnbrowse" runat="server" Text="Browse" />
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
 <%--   <asp:Button ID="btnapply" runat="server" Text="Submit" CommandName="Insert" OnCommand="subApply" />
    <asp:Button ID="btncancel" runat="server" OnClick="subcancel"/>--%>
    <asp:Button ID="btnapply" runat="server" Text="Submit" CommandName="Insert" OnCommand="subVolunteer" />
    <%--<asp:Button ID="btncancel" runat="server" OnClick="subcancel"/>--%>
                                            <asp:Button ID="btncancel" runat="server"/>  

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

