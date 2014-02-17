<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="program-service.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div class="container" id="main">


        <div id="master_content">

            <div id="ps_content_image">
            </div>
            <!-- end about_content_image-->

            <div class="row">

                <asp:Label runat="server" ID="lbl_test"></asp:Label>

                <div class="col-xs-12" id="ps_nav">

                    <div class="tabbable">

                        <asp:ScriptManager runat="server" ID="scm_main" />




                        <div class="tab-content">

                            <asp:UpdatePanel ID="up_main" runat="server">
                                <ContentTemplate>

                                    <asp:Menu ID="ps_nav_menu" runat="server" CssClass="nav nav-tabs " Orientation="Horizontal" OnMenuItemClick="switchTabs" StaticSelectedStyle-CssClass="active">
                                        <Items>
                                            <asp:MenuItem Text="Emergency Services" Selected="true" Value="0" />
                                            
                                            <asp:MenuItem Text="ER Wait Time" Value="1" />
                                            <asp:MenuItem Text="Inpatient Services" Value="2" />
                                            <asp:MenuItem Text="Outpatient Services" Value="3" />
                                            <asp:MenuItem Text="Laboratory" Value="4" />
                                            <asp:MenuItem Text="Other Services" Value="5" />
        

                                          
                                        </Items>
                                    </asp:Menu>



                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <p>Emergency Services</p>
                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <p>
                                               
								                ER Wait Time
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view3" runat="server">
                                            <p>
                                                Inpatient Services
                                               
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view4" runat="server">
                                            <p>
                                               Outpatient Services
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view5" runat="server">
                                            <p>
                                               Laboratory
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view6" runat="server">
                                            <p>
                                               Other Services
							
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

