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

 <%--*************************************JOB BOARD PANEL*************************************--%>

                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <br />
                                            <asp:Panel ID="pnl_jobs" runat="server" GroupingText=" Employment Opportunities">
                                                <table border="1">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                <asp:Label ID="lbl_job" runat="server" Text="Title" /></th>
                                                            <th>
                                                                <asp:Label ID="lbl_description" runat="server" Text="Description" /></th>
                                                            <th>
                                                                <asp:Label ID="lbl_date" runat="server" Text="Last Date To Apply" /></th>
                                                            <th>&nbsp;</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <asp:Repeater ID="rpt_allJobs" runat="server" OnItemCommand="subJobs">
                                                            <ItemTemplate>
                                                                <tr>
                                                                    <td><%#Eval("title") %></td>
                                                                    <td><%#Eval("description") %></td>
                                                                    <td><%#Eval("last_date_apply") %></td>
                                                                    <td>
                                                                        <asp:LinkButton ID="btn_apply" runat="server" Text="Apply" CommandName="ApplyNow" CommandArgument='<%#Eval ("Id") %>' /></td>
                                                                    </tr>
                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                    </tbody>
                                                </table>
                                            </asp:Panel>

 <%--*************************************APPLY PANEL*************************************--%>                                         
                                            <asp:Panel ID="pnl_apply" runat="server" GroupingText="Apply For Career">
                                            <asp:Repeater ID="rpt_applyNow" runat="server" OnItemCommand="subApply">
                                            <ItemTemplate>
                                            <asp:HiddenField ID="hdf_jobID" runat="server" Value='<%#Eval ("Id") %>' />
                                            <asp:Label ID="lbl_youChose" runat="server" Text="You chose to apply for the job: " />
                                            <asp:Label ID="lbl_chosenJob" runat="server" Text='<%#Eval ("title") %>' />
                                            <br /><br />
                                            <asp:Label ID="lbl_fnameApp" runat="server" Text="First Name" AssociatedControlID="txt_fnameApp" />
                                            <asp:TextBox ID="txt_fnameApp" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_fnameApp" runat="server" Text="*Required" ControlToValidate="txt_fnameApp" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_lnameApp" runat="server" Text="Last Name" AssociatedControlID="txt_lnameApp" />
                                            <asp:TextBox ID="txt_lnameApp" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_lnameApp" runat="server" Text="*Required" ControlToValidate="txt_lnameApp" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_emailApp" runat="server" Text="Email" AssociatedControlID="txt_emailApp" />
                                            <asp:TextBox ID="txt_emailApp" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_emailApp" runat="server" Text="*Required" ControlToValidate="txt_emailApp" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_phoneApp" runat="server" Text="Phone Number" AssociatedControlID="txt_phoneApp" />
                                            <asp:TextBox ID="txt_phoneApp" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_phoneApp" runat="server" Text="*Required" ControlToValidate="txt_phoneApp" ValidationGroup="insert" />
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
                                            <asp:TextBox id="txt_msgBox" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                                            <br /><br />
                                            <asp:Button ID="btn_applyJob" runat="server" Text="Apply" ValidationGroup="insert" CommandName="ApplyNow"/>
                                            <asp:Button ID="btn_cancelApp" runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="false"/>
                                            <%--<asp:Label ID="lbl_confirmApply" runat="server" />--%>
                                            </ItemTemplate>
                                            </asp:Repeater>
                                            <asp:Label ID="lbl_confirmApply" runat="server" />
                                            </asp:Panel>
                                        </asp:View>
                                        <!--************************************ View 2 ************************************-->
                                        <asp:View ID="view2" runat="server">
                                            <h1>Apply for Career</h1>
                                            
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
                                            <br />
                                            <br />
                                            <asp:Label ID="lbllname" runat="server" Text="Last Name" AssociatedControlID="txtlname" />
                                            <asp:TextBox ID="txtlname" runat="server" />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblage" runat="server" Text="Age" AssociatedControlID="txtage" />
                                            <asp:TextBox ID="txtage" runat="server" />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblgender" runat="server" Text="Gender" />
                                            <asp:RadioButtonList ID="rdb_gender" RepeatColumns="2" RepeatDirection="Horizontal" runat="server">
                                                <asp:ListItem Text="Male" />
                                                <asp:ListItem Text="Female" />
                                            </asp:RadioButtonList>
                                            <br />
                                            <br />
                                            <asp:Label ID="lblcontact" runat="server" Text="Contact No" AssociatedControlID="txtcontact" />
                                            <asp:TextBox ID="txtcontact" runat="server" />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblemail" runat="server" Text="E-mail" AssociatedControlID="txtemail" />
                                            <asp:TextBox ID="txtemail" runat="server" />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblschool" runat="server" Text="High School" AssociatedControlID="txtschool" />
                                            <asp:TextBox ID="txtschool" runat="server" />
                                            <br />
                                            <br />
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
                                            <br />
                                            <br />
                                            <%--   <asp:Button ID="btnapply" runat="server" Text="Submit" CommandName="Insert" OnCommand="subApply" />
    <asp:Button ID="btncancel" runat="server" OnClick="subcancel"/>--%>
                                            <asp:Button ID="btnapply" runat="server" Text="Submit" CommandName="Insert" OnCommand="subVolunteer" />
                                            <%--<asp:Button ID="btncancel" runat="server" OnClick="subcancel"/>--%>
                                            <asp:Button ID="btncancel" runat="server" />

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

