<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" Theme="mainStyle" %>





<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">





    <div class="container" id="main">


        <asp:SqlDataSource runat="server" ID="sds_carousel" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [Imageslider]" />



        <asp:Repeater runat="server" ID="rpt_sliders" DataSourceID="sds_carousel">

            <ItemTemplate>

                <div id="display">

                    <ul id="slideshow">

                        <li class="slide">

                            <asp:Image runat="server" ID="img1" ImageUrl='<%#Eval("imageurl1") %>' CssClass="active" />

                            <div class="slideshow_left">

                                <asp:Label runat="server" ID="title1" Text='<%#Eval("title1") %>' CssClass="slideshow_title" />

                                <asp:Label runat="server" ID="lbl1" Text='<%#Eval("caption1") %>' CssClass="slideshow_caption" />

                            </div>

                        </li>

                        <li class="slide">

                            <asp:Image runat="server" ID="img2" ImageUrl='<%#Eval("imageurl2") %>' />

                            <div class="slideshow_left">

                                <asp:Label runat="server" ID="title2" Text='<%#Eval("title2") %>' CssClass="slideshow_title" />

                                <asp:Label runat="server" ID="lbl2" Text='<%#Eval("caption2") %>' CssClass="slideshow_caption" />

                            </div>

                        </li>

                        <li class="slide">

                            <asp:Image runat="server" ID="img3" ImageUrl='<%#Eval("imageurl3") %>' />

                            <div class="slideshow_left">

                                <asp:Label runat="server" ID="title3" Text='<%#Eval("title3") %>' CssClass="slideshow_title" />

                                <asp:Label runat="server" ID="lbl3" Text='<%#Eval("caption3") %>' CssClass="slideshow_caption" />

                            </div>

                        </li>



                    </ul>

                </div>

            </ItemTemplate>

        </asp:Repeater>

        <a id="slide_prev"></a>

        <a id="slide_next"></a>





        <div class="row" id="home_alert">

            <div class="col-12">






                <div class="alert alert-danger alert-dismissable" id="home_successAlert">

                    <asp:Button runat="server" ID="btn_alert" CssClass="close" Text="&times;" />


                    <!-- <button type="button" class="close" data-dismiss="alert">&times;</button> -->


                    <asp:Repeater ID="rpt_display_alert" runat="server">

                        <ItemTemplate>

                            <h4><i class="fa fa-warning"></i>&nbsp;<%#Eval("Title") %></h4>



                            <asp:Label runat="server" ID="lbl_alert" Text='<%#Eval("Message") %>' />

                        </ItemTemplate>

                    </asp:Repeater>




                </div>
                <!-- end alert -->


            </div>
            <!-- end col-12 -->

        </div>
        <!-- end bigCallout -->



        <div class="row" id="timeline-quicklinks">


            <div class="col-lg-7">

                <h3>NEWS & EVENTS</h3>

                <div id="timeline">

                    <!-- the following two menu cannot be converted due to an infinite loop in calling the server 
                        when configuring the HTML ID, due to javascript attached to their names -->
                    <%--<asp:SqlDataSource runat="server" ID="sds_timeline" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [News]" />--%>

                    <asp:SqlDataSource runat="server" ID="sds_timeline" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [Timeline]" />

                    <%-- <asp:FormView ID="fv_timeline" runat="server" DataSourceID="sds_timeline">
                            <ItemTemplate>
                            --%>
                            <ul id="dates">

                    <asp:Repeater ID="rpt_timeline" runat="server" DataSourceID="sds_timeline">
                        <ItemTemplate>
                                <li><a href='#<%#Eval("Id")%>'><%#Eval("date") %></a></li>
                                <%--<li><a href="#1930"><%#Eval("date2") %></a></li>
                                <li><a href="#1944"><%#Eval("date3") %></a></li>
                                <li><a href="#1950"><%#Eval("date4") %></a></li>--%>

                            
                              <%--  <li id="1930">
                                    <img src='<%#Eval("image2") %>' />
                                    <h1><%#Eval("title2") %></h1>
                                    <p><%#Eval("text2") %></p>
                                </li>
                                <li id="1944">
                                    <img src='<%#Eval("image3") %>' />
                                    <h1><%#Eval("title3") %></h1>
                                    <p><%#Eval("text3") %></p>
                                </li>
                                <li id="1950">
                                    <img src='<%#Eval("image4") %>' />
                                    <h1><%#Eval("title4") %></h1>
                                    <p><%#Eval("text4") %></p>
                                </li>--%>


                            
                        </ItemTemplate>
                    </asp:Repeater>
                            </ul>

                    <ul id="issues">
                        <asp:Repeater ID="rpt_info" runat="server" DataSourceID="sds_timeline">
                            <ItemTemplate>
                                <li id='#<%#Eval("Id")%>'>
                                    <img src='<%#Eval("image") %>' />
                                    <h1><%#Eval("date") %></h1>
                                    <p><%#Eval("text") %></p>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                                
                    </ul>




                    <%--</ItemTemplate>
                        </asp:FormView>--%>

                    <div id="grad_left"></div>
                    <div id="grad_right"></div>
                    <asp:HyperLink runat="server" ID="next" ClientIDMode="Static" NavigateUrl="#" Text="+" />
                    <asp:HyperLink runat="server" ID="prev" ClientIDMode="Static" NavigateUrl="#" Text="-" />



                </div>
                <!-- end timeline -->





            </div>
            <!-- end col-7 -->



            <div class="col-lg-5" id="home_quick_links">

                <h3>QUICK LINKS</h3>

                <div class="list-group">



                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Planning Your Stay</h4><i class='fa fa-play'></i>" />



                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Visiting the Hospital</h4><i class='fa fa-play'></i>" />




                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Public Report</h4><i class='fa fa-play'></i>" />




                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Employment Opportunities</h4><i class='fa fa-play'></i>" />






                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Contact Us</h4><i class='fa fa-play'></i>" />





                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Donate Now</h4><i class='fa fa-play'></i>" />





                </div>
                <!-- end list-group -->




            </div>
            <!-- end col-5 -->






        </div>
        <!-- end timeline-quicklinks -->

        <div class="row" id="home_program_highlights">

            <div class="col-12">

                <h3>PROGRAM HIGHLIGHTS</h3>



                <div class=" col-lg-3 feature home_ph_item">


                    <asp:Image runat="server" ImageUrl="App_Themes/images/home-food.png" AlternateText="Food" ID="img_food" />

                    <!-- the following series of a tags cannot be converted due to dashes being invalid IDs in ASP.net -->


                    <asp:HyperLink runat="server" Target="_blank" NavigateUrl="#" CssClass="btn btn-block" ID="home_btn_services" ClientIDMode="Static" Text="Food Services" />



                </div>



                <div class="col-lg-3 feature home_ph_item">


                    <asp:Image runat="server" ImageUrl="App_Themes/images/home-woman.png" AlternateText="Woman" ID="img_woman" />


                    <asp:HyperLink runat="server" Target="_blank" ID="home_btn_woman" CssClass="btn btn-block" ClientIDMode="Static" Text="Woman's Services" NavigateUrl="#" />

                </div>







                <div class="col-lg-3 feature home_ph_item">


                    <asp:Image runat="server" ID="img_aboriginal" ImageUrl="App_Themes/images/home-aboriginal.png" AlternateText="Aboriginal" />

                    <asp:HyperLink runat="server" Target="_blank" ID="home_btn_aboriginal" CssClass="btn btn-block" ClientIDMode="Static" Text="Aboriginal Services" NavigateUrl="#" />

                </div>



                <div class="col-lg-3 feature home_ph_item">


                    <asp:Image runat="server" ID="img_drug" ImageUrl="App_Themes/images/home-drug.png" AlternateText="Drug" />

                    <asp:HyperLink runat="server" Target="_blank" ID="home_btn_drug" ClientIDMode="Static" Text="Drug Abuse Services" CssClass="btn btn-block" NavigateUrl="#" />



                </div>

            </div>

        </div>
        <!-- end home-program-highlights -->



    </div>
    <!-- end main -->



</asp:Content>
