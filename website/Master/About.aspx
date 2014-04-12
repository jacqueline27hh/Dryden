<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div class="container" id="main">


        <div id="master_content">

            <div id="about_content_image">
            </div>
            <!-- end about_content_image-->

            <div class="row">

                <asp:Label runat="server" ID="lbl_test"></asp:Label>

                <div class="col-xs-12" id="about_nav">

                    <div class="tabbable">

                        <asp:ScriptManager runat="server" ID="scm_main" />




                        <div class="tab-content">

                            <asp:UpdatePanel ID="up_main" runat="server">
                                <ContentTemplate>

                                    <asp:Menu ID="about_nav_menu" runat="server" CssClass="nav nav-tabs " Orientation="Horizontal" OnMenuItemClick="switchTabs" StaticSelectedStyle-CssClass="active">
                                        <Items>
                                            <asp:MenuItem Text="Public Report" Selected="true" Value="0" />
                                            <asp:MenuItem Text="Meet the Board" Value="1" />
                                            <asp:MenuItem Text="Mission Statement" Value="2" />
                                            <asp:MenuItem Text="Donate Now" Value="3" />
                                            <asp:MenuItem Text="About the team" Value="4" />
                                        </Items>
                                    </asp:Menu>



                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <p>Public Report</p>
                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <p>
                                                Meet the board
								   
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view3" runat="server">
                                            <p>
                                                Mission Statement
							
                                            </p>
                                        </asp:View>
                                        <asp:View ID="view4" runat="server">
                                            <p>
                                                Donate Now
							
                                            </p>
                                        </asp:View>

                                        <asp:View ID="view5" runat="server">
                                            <br />
                                            <br />
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <asp:Image ID="img_kate" runat="server" ImageUrl="App_Themes/images/me.jpg" CssClass="about_avatar" />
                                                </div>
                                                <%-- end col-md-4--%>
                                                <div class="col-md-6">
                                                    <div class="about_text_wrapper">

                                                        <h3>Kate Gollogly</h3>

                                                        <p class="avatar_p">
                                                            Kate Gollogly is our team leader and front-end developer. She has a great appreciation for organization and an eye for detail. With a background in Sociology, Kate has a great understanding for individuals and our society as a whole. This gives her an extra edge when it comes to creating the very best user experience possible.
                                                        </p>
                                                    </div>
                                                    <%--end about_text_wrapper--%>
                                                </div>
                                                <%-- end col-md-2--%>
                                            </div>
                                            <%--end row--%>
                                            <br />
                                            <br />

                                            <div class="row">
                                                <div class="col-md-3">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl="App_Themes/images/Michaeljdu20105348763defc9b.png" CssClass="about_avatar" />
                                                </div>
                                                <%-- end col-md-4--%>
                                                <div class="col-md-6">
                                                    <div class="about_text_wrapper">

                                                        <h3>Michael Du</h3>

                                                        <p class="avatar_p">
                                                            Mike is 70% coder, 30% designer.  He's most comfortable working in his native habitat of front end Javascript or backend ASP.net, munching on a healthy diet of projects in an agile team environment.  He is also graduate of the Humber Web Development Program. possible.
                                                        </p>
                                                    </div>
                                                    <%--end about_text_wrapper--%>
                                                </div>
                                                <%-- end col-md-2--%>
                                            </div>
                                            <%--end row--%>
                                            <br />
                                            <br />

                                            <div class="row">
                                                <div class="col-md-3">
                                                    <asp:Image ID="Image2" runat="server" ImageUrl="App_Themes/images/avatar_Jackie.png" CssClass="about_avatar" />
                                                </div>
                                                <%-- end col-md-4--%>
                                                <div class="col-md-6">
                                                    <div class="about_text_wrapper">

                                                        <h3>Jacqueline Liu</h3>

                                                        <p class="avatar_p">
                                                            Jacqueline currently works as a junior graphic and web designer at Clarkhuot and also attends Humber College for web development.  She strives to create and new ideas and break the rules in creativity (if there were any rules). She is known for having a soft spot for dogs and cats and having fears towards insects.
                                                        </p>
                                                    </div>
                                                    <%--end about_text_wrapper--%>
                                                </div>
                                                <%-- end col-md-2--%>
                                            </div>
                                            <%--end row--%>

                                            
                                            <br />
                                            <br />

                                            

                                            <div class="row">
                                                <div class="col-md-3">
                                                    <asp:Image ID="Image4" runat="server" ImageUrl="App_Themes/images/justinog.png" CssClass="about_avatar" />

                                                </div>
                                                <%-- end col-md-4--%>
                                                <div class="col-md-6">
                                                    <div class="about_text_wrapper">


                                                       

                                                        <h3>Justin O'Gorman</h3>

                                                        <p class="avatar_p">
                                                            Justin is a web developer currently going to Humber. He loves learning new things, and enjoys staying up to date on the latest trends around the web. He's most passionate about front end development and building cool things with emerging technologies. When not developing, he's a huge Toronto sports fan(unfortunately), plays softball, snowboards and loves to travel. 

                                                        </p>
                                                    </div>
                                                    <%--end about_text_wrapper--%>
                                                </div>
                                                <%-- end col-md-2--%>
                                            </div>
                                            <%--end row--%>
                                            <br />
                                            <br />

                                            

                                            <div class="row">
                                                <div class="col-md-3">
                                                    <asp:Image ID="Image3" runat="server" ImageUrl="App_Themes/images/20140412_221141_2855_Shalini.png" CssClass="about_avatar" />

                                                </div>
                                                <%-- end col-md-4--%>
                                                <div class="col-md-6">
                                                    <div class="about_text_wrapper">


                                                       

                                                        <h3>Shalini Patel</h3>

                                                        <p class="avatar_p">
                                                           Shalini Patel is a student at Humber College studying Web Development Program. She graduated with

Bachelor of Computer Application from India. After her graduation, she studied Enterprise Database 

Management post-graduate certificate program from Sheridan College. She has worked on with.Net 

and MS SQL for her Automobile Management Project during her internship. In Web Development she 

worked with two major projects with ASP.NET and PHP as a backend.

                                                        </p>
                                                    </div>
                                                    <%--end about_text_wrapper--%>
                                                </div>
                                                <%-- end col-md-2--%>
                                            </div>
                                            <%--end row--%>
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

