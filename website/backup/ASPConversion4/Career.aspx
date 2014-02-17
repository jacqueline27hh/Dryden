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
                                            
                                            <asp:MenuItem Text="How To Apply" Value="1" />
                                            <asp:MenuItem Text="Why Work Here" Value="2" />
                                            <asp:MenuItem Text="Volunteer Program" Value="3" />
                                            <asp:MenuItem Text="View Your Appointments" Value="4" />
                                            
        

                                          
                                        </Items>
                                    </asp:Menu>



                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <p>Employment Opportunities</p>
                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <p>
                                               
								               How To Apply
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view3" runat="server">
                                            <p>
                                                Why Work Here
                                               
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view4" runat="server">
                                            <p>
                                               Volunteer Program
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view5" runat="server">
                                            <p>
                                               View Your Appointments
							
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

