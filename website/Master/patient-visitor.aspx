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
                                            
                                            <asp:MenuItem Text="Visiting & Staying" Value="1" />
                                            <asp:MenuItem Text="Parking" Value="2" />
                                            <asp:MenuItem Text="Patient Feedback" Value="3" />
                                            <asp:MenuItem Text="Identify Your Symptoms" Value="4" />
                                            <asp:MenuItem Text="E-card" Value="5" />
        
                                            <asp:MenuItem Text="View Your Appointments" Value="6" />
                                            <asp:MenuItem Text="Book Your Appointments" Value="7" />
                                          
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
                                            <p>
                                               Patient Feedback
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view5" runat="server">
                                            <p>
                                               Identify Your Symptoms
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view6" runat="server">
                                            <p>
                                               E-card
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view7" runat="server">
                                            <p>
                                              View Your Appointments
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view8" runat="server">
                                            <p>
                                              Book Your Appointments
							
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

