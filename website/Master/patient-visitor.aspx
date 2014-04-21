<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="patient-visitor.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div class="container" id="main">


        <div id="master_content">

            <div id="pv_content_image">
            </div>
            <!-- end about_content_image-->

            <div class="row">

                <asp:Label runat="server" ID="lbl_test"></asp:Label>

                <div class="col-xs-12" id="pv_nav">

                    <div class="tabbable">

                        <asp:ScriptManager runat="server" ID="scm_main" />




                        <div class="tab-content">

                            <asp:UpdatePanel ID="up_main" runat="server">
                                <ContentTemplate>

                                    <asp:Menu ID="pv_nav_menu" runat="server" CssClass="nav nav-tabs " Orientation="Horizontal" OnMenuItemClick="switchTabs" StaticSelectedStyle-CssClass="active">
                                        <Items>
                                            <asp:MenuItem Text="Accessibility" Selected="true" Value="0" />

                                            <asp:MenuItem Text="Planning Your Stay" Value="1" />
                                            <asp:MenuItem Text="Visiting The Hospital" Value="2" />
                                            <asp:MenuItem Text="Patient Feedback" Value="3" />
                                            <asp:MenuItem Text="Identify Your Symptoms" Value="4" />
                                            <asp:MenuItem Text="E-card" Value="5" />
                                            <asp:MenuItem Text="Parking" Value="6" />



                                        </Items>
                                    </asp:Menu>



                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <p>Accessibility</p>
                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <p>
                                                Planning Your Stay
								   
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view3" runat="server">
                                            <p>
                                                Visiting The Hospital
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view4" runat="server">
                                            <h1>Patient Feedback</h1>
                                            <br />
                                            <asp:Label ID="lbl_message" runat="server" />
                                            <br />
                                            <asp:Label ID="lblFname" runat="server" Text="First Name" AssociatedControlID="txtFname" />
                                            <br />
                                            <asp:TextBox ID="txtFname" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfvFname" runat="server" Text="*Required" ControlToValidate="txtFname" ValidationGroup="insert" />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblLname" runat="server" Text="Last Name" AssociatedControlID="txtLname" />
                                            <br />
                                            <asp:TextBox ID="txtLname" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfvLname" runat="server" Text="*Required" ControlToValidate="txtLname" ValidationGroup="insert" />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail" />
                                            <br />
                                            <asp:TextBox ID="txtEmail" runat="server" />
                                            <asp:RegularExpressionValidator ID="revEmail" runat="server" Text="*Invalid email" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9a-zA-Z]+([0-9a-zA-Z]*[-._+])*[0-9a-zA-Z]+@[0-9a-zA-Z]+([-.][0-9a-zA-Z]+)*([0-9a-zA-Z]*[.])[a-zA-Z]{2,6}$" ValidationGroup="insert" />
                                            <%--src: www.regxlib.com/REDetails.aspx?regexp_id=3122 --%>
                                            <br />
                                            <br />
                                            <asp:Label ID="lblReview" runat="server" Text="Review of" AssociatedControlID="txtReview" />
                                            <br />
                                            <asp:TextBox ID="txtReview" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfvReview" runat="server" Text="*Required" ControlToValidate="txtReview" ValidationGroup="insert" />
                                            <br />
                                            <br />
                                            <asp:Label ID="lblMsg" runat="server" Text="Message" AssociatedControlID="txtMsg" />
                                            <br />
                                            <asp:TextBox ID="txtMsg" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfvMsg" runat="server" Text="*Required" ControlToValidate="txtMsg" ValidationGroup="insert" />
                                            <br />
                                            <br />

                                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CommandName="Insert" OnCommand="subAddReview" ValidationGroup="insert" />
                                            <br />
                                            <br />
                                            <asp:Label ID="lbl_ty" runat="server" />





                                        </asp:View>
                                        <%--use sql data source to connect to quiz table--%>
                                        <asp:View ID="view5" runat="server">
                                            <asp:SqlDataSource ID="sql_qf" runat="server" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [quiz]"></asp:SqlDataSource>
                                            <br />
                                            <br />
                                            <h3><span>Quiz: </span>Should I Go to the Emergency Room?</h3>
                                            <br />
                                            <br />
                                            <%--   use repeater--%>
                                            <asp:Repeater ID="rpt_qf" runat="server" DataSourceID="sql_qf">
                                                <ItemTemplate>
                                                    <%--   connect to the questions field in database--%>
                                                    <asp:Label ID="lbl_quiz_q" runat="server" Text='<%#Eval("Questions") %>' />

                                                    <asp:RadioButtonList runat="server" ID="rbl_questions">

                                                        <asp:ListItem Value="Y"> Yes </asp:ListItem>
                                                        <asp:ListItem Value="N"> No </asp:ListItem>

                                                    </asp:RadioButtonList>
                                                    <%--   Required field validation--%>
                                                    <asp:RequiredFieldValidator ID="rfv_radio" runat="server"
                                                        ErrorMessage="Please answer all the questions" ControlToValidate="rbl_questions"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <br />
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Button CssClass="btn_pv" runat="server" Text="Submit" OnClick="subProcess" />
                                                </FooterTemplate>
                                            </asp:Repeater>
                                            <asp:Label runat="server" ID="lbl_test2" />
                                        </asp:View>
                                        <asp:View ID="view6" runat="server">
                                            <div id="jEcardPnale">
                                                <h3><span>E-card</span> Send an e-card to someone special!</h3>

                                                <!-- Here are the controls: -->

                                                <asp:Label ID="lblName" runat="server" Text="To:" AssociatedControlID="txtName" />
                                                <br />
                                                <asp:TextBox ID="txtName" runat="server" />
                                                <asp:RequiredFieldValidator ID="rfvName" runat="server" Text="*Required" ControlToValidate="txtName" Display="Dynamic" ValidationGroup="Jinsert" />
                                                <br />
                                                <asp:Label ID="lblRec" runat="server" Text="From:" AssociatedControlID="txtRec" />
                                                <br />
                                                <asp:TextBox ID="txtRec" runat="server" />
                                                <asp:RequiredFieldValidator ID="rfvRec" runat="server" Text="*Required" ControlToValidate="txtRec" Display="Dynamic" ValidationGroup="Jinsert" />
                                                <br />
                                                <asp:Label ID="lblBg" runat="server" Text="Choose a background:" />
                                                <br />
                                                <asp:DropDownList ID="ddlBg" runat="server">
                                                    <asp:ListItem Text="Birthday" Value="~/App_Themes/images/birthday.jpg" />
                                                    <asp:ListItem Text="Congratulations!" Value="~/App_Themes/images/congrats.jpg" />
                                                    <asp:ListItem Text="Get Well Soon" Value="~/App_Themes/images/getwell.jpg" />
                                                    <asp:ListItem Text="Clouds" Value="~/App_Themes/images/clouds2.jpg" />
                                                </asp:DropDownList>
                                                <br />
                                                <asp:Label ID="lblFont" runat="server" Text="Choose a font:" />
                                                <br />
                                                <asp:DropDownList ID="ddlFont" runat="server">
                                                    <asp:ListItem Text="Times New Roman" Value="Times New Roman" />
                                                    <asp:ListItem Text="Arial" Value="Arial" />
                                                </asp:DropDownList>
                                                <br />
                                                <asp:Label ID="lblSize" runat="server" Text="Choose a font size:" />
                                                <br />
                                                <asp:DropDownList ID="ddlSize" runat="server">

                                                    <asp:ListItem Text="24" Value="24" />
                                                    <asp:ListItem Text="32" Value="32" />
                                                    <asp:ListItem Text="36" Value="36" />
                                                    <asp:ListItem Text="40" Value="40" />
                                                    <asp:ListItem Text="48" Value="48" />
                                                </asp:DropDownList>
                                                <br />
                                                <asp:Label ID="lblGreeting2" runat="server" Text="Enter the greeting below:" />
                                                <br />
                                                <asp:TextBox ID="txtGreeting" runat="server" Width="240px" Height="85px" TextMode="MultiLine" />
                                                <br />
                                                <asp:Button ID="cmdUpdate" OnClick="cmdUpdate_Click" runat="server" Text="Preview" ValidationGroup="Jinsert" CssClass="btn_pv" />
                                                <asp:Button ID="btnSub" runat="server" Text="Submit" CommandName="Insert" OnCommand="subAddEcard" ValidationGroup="Jinsert" CssClass="btn_pv" />
                                                <br />
                                                <br />
                                                <asp:Label ID="lblTy" runat="server" />


                                                <!-- Here is the card: -->
                                                <asp:Panel ID="pnlCard" runat="server" Width="339px" Height="481px">
                                                    <br />
                                                    &nbsp;
        <asp:Label ID="lblGreeting" runat="server" Width="256px" Height="150px" />
                                                    <br />
                                                </asp:Panel>
                                            </div>
                                            <%--end jEcardPnale--%>
                                        </asp:View>

                                        <asp:View ID="view7" runat="server">
                                            <p>
                                                Parking
							
                                            </p>
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

