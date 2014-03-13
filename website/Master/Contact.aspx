﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" runat="Server">
    <div class="container" id="main">


        <div id="master_content">

            <div id="contact_content_image">
            </div>
            <!-- end about_content_image-->

            <div class="row">

                <asp:Label runat="server" ID="lbl_test"></asp:Label>

                <div class="col-xs-12" id="contact_nav">

                    <div class="tabbable">

                        <asp:ScriptManager runat="server" ID="scm_main" />




                        <div class="tab-content">

                            <asp:UpdatePanel ID="up_main" runat="server">
                                <ContentTemplate>

                                    <asp:Menu ID="contact_nav_menu" runat="server" CssClass="nav nav-tabs " Orientation="Horizontal" OnMenuItemClick="switchTabs" StaticSelectedStyle-CssClass="active">
                                        <Items>
                                            <asp:MenuItem Text="Location" Selected="true" Value="0" />
                                            <asp:MenuItem Text="Mailing List" Value="1" />
                                            <asp:MenuItem Text="Contact Us" Value="2" />
                                           
                                        </Items>
                                    </asp:Menu>



                                    <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0">
                                        <asp:View ID="view1" runat="server">
                                            <p>Location</p>
                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <h1>Join Our Mailing List!</h1>
                                            <p>Join our mailing list and stay up-to-date with what's happening at Dyrden Regional Health Care Centre. Be the first to know about any community health alerts and conerns. Stay connected!</p>
                                            <br />
                                            <asp:Label ID="lbl_fname" runat="server" Text="First Name" AssociatedControlID="txt_fname" />
                                            <br />
                                            <asp:TextBox ID="txt_fname" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_fname" runat="server" Text="*Required" ControlToValidate="txt_fname" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_lname" runat="server" Text="Last Name" AssociatedControlID="txt_lname" />
                                            <br />
                                            <asp:TextBox ID="txt_lname" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_lname" runat="server" Text="*Required" ControlToValidate="txt_lname" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Label ID="lbl_email" runat="server" Text="Email" AssociatedControlID="txt_email" />
                                            <br />
                                            <asp:TextBox ID="txt_email" runat="server" />
                                            <asp:RequiredFieldValidator ID="rfv_email" runat="server" Text="*Required" ControlToValidate="txt_email" ValidationGroup="insert" />
                                            <br /><br />
                                            <asp:Button ID="btn_subscribe" runat="server" Text="Subscribe" />
                                            <asp:Button ID="btn_unscubscribe" runat="server" Text="Unsubscribe" />
                                        </asp:View>
                                        <asp:View ID="view3" runat="server">
                                            <p>
                                                Contact Us
							
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

