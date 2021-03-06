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
                                            
                                            <asp:Label runat="server" ID="lbl_test2" /> 

                                                <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAxx1u6ymP3zxZSUvdMcX2WE21HtsVjjXg&sensor=false">
</script>

                             <asp:SqlDataSource runat="server" ID="sds_contact" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [google_map]" /> 

                                            <asp:Repeater ID="rpt_gmap" runat="server" DataSourceID="sds_contact">
                                                <ItemTemplate>


                                                    <script>
                                                                                                               
                                                        var mapCenter = new google.maps.LatLng(<%#Eval("lat") %>, <%#Eval("lng") %>);

                                                        function initialize() {
                                                            var mapProp = {
                                                                center: mapCenter,
                                                                zoom: 15,
                                                                mapTypeId: google.maps.MapTypeId.ROADMAP
                                                            };

                                                            var map = new google.maps.Map(document.getElementById("gMap"), mapProp);

                                                            var marker = new google.maps.Marker({
                                                                position: mapCenter,
                                                            });

                                                            marker.setMap(map);
                                                        }

                                                        google.maps.event.addDomListener(window, 'load', initialize);
</script>
               
                                                    <div id="gMap" style="width:550px;height:400px;"></div>

                                                </ItemTemplate>

                                            </asp:Repeater>

             

                                        </asp:View>
                                        <asp:View ID="view2" runat="server">
                                            <div class="row">
                                                <div class="col-xs-12 col-lg-6 mailingList">
                                                    <h1 style="float:left;">Join Our Mailing List!</h1>
                                                    <p class="ml_p">Join our mailing list and stay up-to-date with what's happening at Dyrden Regional Health Care Centre. Be the first to know about any community health alerts and conerns. Stay connected!</p>
                                                </div>
                                                <div class="col-xs-12 col-lg-6">
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
                                                    <asp:Button ID="btn_subscribe" runat="server" Text="Subscribe" CommandName="Insert" OnCommand="subAddSubscriber" ValidationGroup="insert" CssClass="btn_ml" />
                                                    <asp:Label ID="lbl_thankYou" runat="server" />
                                                </div>
                                            </div>
                                        </asp:View>
                                        <asp:View ID="view3" runat="server">
                                            
                                            <p>
                                              Feel free to Contact Us Directly..!!!
							
                                            </p>
                                            <%--Contact us form--%>
                                             <table> 
                                                 <tr>
                                                     <td>
                                            <asp:Label ID="lblfname" runat="server" AssociatedControlID="txtfname"  Text="First Name"/></td>
                                          <td>  <asp:TextBox ID="txtfname" runat="server" /></td>
                                                     <td> <asp:RequiredFieldValidator ID="rfv_contactfname" runat="server" Text="*Required" ControlToValidate="txtfname" ValidationGroup="submit" /><br /><br /></td>
                                           </tr>
                                                 <tr>
                                                     <td><asp:Label ID="lbllname" runat="server" AssociatedControlID="txtlname" Text="Last Name" /></td>
                                                     <td> <asp:TextBox ID="txtlname" runat="server" /></td>
                                                     <td> <asp:RequiredFieldValidator ID="rfv_contactlname" runat="server" Text="*Required" ControlToValidate="txtlname" ValidationGroup="submit"  /> <br /><br /></td>
                                                 </tr>
                                               
                                           <tr>
                                               <td> <asp:Label ID="lbldept" runat="server" AssociatedControlID="ddl_dept" Text="Department" /></td>
                                               
                                               <td> <asp:DropDownList ID="ddl_dept" runat="server">
                                                <asp:ListItem Value="Administrative" />
                                                <asp:ListItem Value="General" />
                                                <asp:ListItem Value="Special" />
                                                <asp:ListItem Value="Emergency" />
                                            </asp:DropDownList>
                                            <br /><br /></td>
                                            
                                           </tr>
                                            
                                           
                                            <tr>
                                               <td>  <asp:Label ID="lblemail" runat="server" Text="Email" AssociatedControlID="txtemail" /></td>
                                               <td>
                                            <asp:TextBox ID="txtemail" runat="server" /></td>
                                               <td>   <asp:RequiredFieldValidator ID="rfv_contactemail" runat="server" ControlToValidate="txtemail" Text="*Required" ValidationGroup="submit"/>
                                            <br /><br /></td>
                                                <td> <%--regular expression for valid email address--%>
                                            <asp:RegularExpressionValidator ID="rgv_email" runat="server" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"  ControlToValidate="txtemail" ValidationGroup="submit"/></td>
                                           </tr>
                                                 
                                                   <tr>
                                               <td><asp:Label ID="lblmessage" runat="server" Text="Message" AssociatedControlID="txtmsg" /></td>
                                               <td>  <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" /><br /></td>
                                               <td> <asp:RequiredFieldValidator ID="rfv_contactmsg" runat="server" Text="*Required" ControlToValidate="txtmsg" ValidationGroup="submit" />
                                            <br /></td>
                                           </tr> 
                                           
                                           
                                           
                                           </table>
                                         
                                           
                                            
                                          
                                           

                                            <asp:Label ID="lbl_output" runat="server" />
                                            <%--<asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="subSubmitMsg" />--%>
                                            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="subSubmitMsg" ValidationGroup="submit" CssClass="btn_ml" />
                                            <%--<asp:Button ID="btn_cancel" runat="server" Text="Cancel" OnClick="subCancelmsg" />--%>
                                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" OnClick="subCancel" CausesValidation="false" CssClass="btn_ml" />
                                             
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

