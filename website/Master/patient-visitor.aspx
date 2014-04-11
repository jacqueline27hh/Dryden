﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="patient-visitor.aspx.cs" Inherits="_Default" %>


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
                                            
                                            <asp:MenuItem Text="Visiting & Staying" Value="1" />
                                            <asp:MenuItem Text="Parking" Value="2" />
                                            <asp:MenuItem Text="Patient Feedback" Value="3" />
                                            <asp:MenuItem Text="Identify Your Symptoms" Value="4" />
                                            <asp:MenuItem Text="E-card" Value="5" />
        
                                            
                                          
                                        </Items>
                                    </asp:Menu>



                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <p>Accessibility</p>
                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <p>
                                                Visiting & Staying
								   
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view3" runat="server">
                                            <p>
                                                Parking
							
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
                                            <br /><br />
                                            <asp:Label ID="lblLname" runat="server" Text="Last Name" AssociatedControlID="txtLname" />
                                            <br />
                                            <asp:TextBox ID="txtLname" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfvLname" runat="server" Text="*Required" ControlToValidate="txtLname" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lblEmail" runat="server" Text="Email" AssociatedControlID="txtEmail" />
                                            <br />
                                            <asp:TextBox ID="txtEmail" runat="server" />
                                            <asp:RegularExpressionValidator ID="revEmail" runat="server" Text="*Invalid email" ControlToValidate="txtEmail" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9a-zA-Z]+([0-9a-zA-Z]*[-._+])*[0-9a-zA-Z]+@[0-9a-zA-Z]+([-.][0-9a-zA-Z]+)*([0-9a-zA-Z]*[.])[a-zA-Z]{2,6}$" ValidationGroup="insert" />
                                            <%--src: www.regxlib.com/REDetails.aspx?regexp_id=3122 --%>
                                            <br /><br />
                                            <asp:Label ID="lblReview" runat="server" Text="Review of" AssociatedControlID="txtReview" />
                                            <br />
                                            <asp:TextBox ID="txtReview" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfvReview" runat="server" Text="*Required" ControlToValidate="txtReview" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lblMsg" runat="server" Text="Message" AssociatedControlID="txtMsg" />
                                            <br />
                                            <asp:TextBox ID="txtMsg" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfvMsg" runat="server" Text="*Required" ControlToValidate="txtMsg" ValidationGroup="insert" />
                                            <br /><br />
                                            
                                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CommandName="Insert" OnCommand="subAddReview" ValidationGroup="insert" />
                                            <br /><br /><asp:Label ID="lbl_ty" runat="server" /> 
                                            

                                               
							
                                            
                                        </asp:View>
                                        <asp:View ID="view5" runat="server">
                                            <asp:SqlDataSource ID="sql_qf" runat="server" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [quiz]"></asp:SqlDataSource>
                                            <br />
                                            <br />
                                            <h3><span>F&Q: </span>Should I Go to the Emergency Room?</h3>
                                            <br />
                                            <br />
                                            <asp:Repeater ID="rpt_qf" runat="server" DataSourceID="sql_qf">
                                                <ItemTemplate>
                                                    <asp:Label id="lbl_quiz_q" runat="server" Text='<%#Eval("Questions") %>' />   
                                                    <asp:RadioButtonList runat="server" ID="rbl_questions">
                                                       
                                                        <asp:ListItem Value="Y"> Yes </asp:ListItem>
                                                        <asp:ListItem Value="N"> No </asp:ListItem>
                                                        
                                                    </asp:RadioButtonList> <br /><br /> 
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    <asp:Button CssClass="btn_pv" runat="server" Text="Submit" OnClick="subProcess" /> 
                                                </FooterTemplate>
                                            </asp:Repeater>
                                 <asp:Label runat="server" ID="lbl_test2" />    
                                     </asp:View>
                                        <asp:View ID="view6" runat="server">
                                            <p>
                                               E-card
							
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

