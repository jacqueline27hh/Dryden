<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" Runat="Server">
    	<div class="container" id="main">
		

		<div id="master_content">

			<div id="about_content_image">

			</div> <!-- end about_content_image-->

			<div class="row">

                 <asp:Label runat="server" ID="lbl_test"></asp:Label>

				<div class="col-xs-12" id="about_nav">

					<div class="tabbable">

                        <asp:ScriptManager runat="server" ID="scm_main" /> 
                        

                        

                    <div class="tab-content">

                        <asp:UpdatePanel ID="up_main" runat="server">
                            <ContentTemplate>

                                <asp:Menu ID="nav_menu"  runat="server" CssClass="nav nav-tabs" Orientation="Horizontal" 
                                    OnMenuItemClick="switchTabs" StaticSelectedStyle-CssClass="active">
                            <Items>
                                <asp:MenuItem Text="Public Report" Selected="true" Value="0" />
                                <asp:MenuItem Text="Meet the Board" Value="1" />
                                <asp:MenuItem Text="Mission Statement" Value="2" />
                                <asp:MenuItem Text="Donate Now" Value="3" /> 
                            </Items>
                        </asp:Menu>

                               

                                   <asp:MultiView ID="mv_tabs" runat="server" ActiveViewIndex="0" > 
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
                            </asp:MultiView>
                    
                           </ContentTemplate>
                        </asp:UpdatePanel>
					
						
                        
						</div><!-- end tab-content -->
					</div><!-- end tabbable -->
				</div><!-- end col-sm-12 -->
			</div> <!-- end row -->

		</div><!-- master_content -->
   </div> 
</asp:Content>

