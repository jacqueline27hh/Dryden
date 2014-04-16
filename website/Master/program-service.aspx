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
                                            <asp:MenuItem Text="Diagnostic Imaging Services" Selected="true" Value="0" />
                                            
                                            <asp:MenuItem Text="ER Wait Time" Value="1" />
                                            <asp:MenuItem Text="Inpatient Services" Value="2" />
                                            <asp:MenuItem Text="Outpatient Services" Value="3" />
                                            <asp:MenuItem Text="Laboratory Services" Value="4" />
                                            <asp:MenuItem Text="Mental Health & Addiction Services" Value="5" />
                                            <asp:MenuItem Text="Oncology Services" Value="6" />
                                            <asp:MenuItem Text="Rehabilitation" Value="7" />
                                            <asp:MenuItem Text="Food Services" Value="8" />
        

                                          
                                        </Items>
                                    </asp:Menu>



                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <p>Diagnostic Imaging Services</p>
                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <p>
                                               
								                ER Wait Time
                                            </p>
                  <asp:Button runat="server" ID="btn_time" Text="times;" />
                                              <asp:Repeater ID="rpt_ERtime" runat="server">

                        <ItemTemplate>

                            <h4>&nbsp;<%#Eval("wait_Time") %></h4>



                            <asp:Label runat="server" ID="lbl_showtime" Text='<%#Eval("wait_time") %>' />

                        </ItemTemplate>

                    </asp:Repeater>

                                            <asp:UpdatePanel ID="udp_time" runat="server" UpdateMode="Conditional">
                                                <ContentTemplate>
                                                    <asp:Label ID="lbl_waittimes" runat="server" Text="Wait Time" />
                                                </ContentTemplate>
                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="btnwait" EventName="Click" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                        <br />
                                            <asp:Button ID="btnwait" runat="server" Text="Click to update" OnClick="subClick" />    



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
                                               Laboratory Services
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view6" runat="server">
                                            <p>
                                               Mental Health & Addiction Services
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view7" runat="server">
                                            <p>
                                               Oncology Services
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view8" runat="server">
                                            <p>
                                               Rehabilitation Services
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view9" runat="server">
                                            <p>
                                               Food Services
							
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

