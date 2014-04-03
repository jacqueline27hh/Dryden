    <%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" Theme="mainStyle" %>


<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" Runat="Server">

      
	<div class="container" id="main">
		
	  <asp:SqlDataSource runat="server" ID="sds_carousel" ConnectionString="<%$ ConnectionStrings:dryden_databaseConnectionString %>" SelectCommand="SELECT * FROM [Imageslider]" />     

           <asp:Repeater runat="server" ID="rpt_sliders" DataSourceID="sds_carousel">
               <ItemTemplate>
                          <div id="display">
                                <ul id="slideshow">
                                    <li class="slide">
                                         <asp:Image runat="server" ID="img1" ImageUrl='<%#Eval("imageurl1") %>' CssClass="active" /> 
                                         <asp:Label runat="server" ID="lbl1" Text='<%#Eval("caption1") %>' /> 
                                    </li>
                                    <li class="slide">
                                         <asp:Image runat="server" ID="img2" ImageUrl='<%#Eval("imageurl2") %>' /> 
                                          <asp:Label runat="server" ID="lbl2" Text='<%#Eval("caption2") %>' /> 
                                    </li>
                                    <li class="slide">
                                         <asp:Image runat="server" ID="img3" ImageUrl='<%#Eval("imageurl3") %>' />
                                        <asp:Label runat="server" ID="lbl3" Text='<%#Eval("caption3") %>' /> 
                                    </li> 
                                    
                                 </ul>
                           </div>    
                                    <span id="slide_prev"> Prev </span>
                                    <span id="slide_next"> Next  </span>
                               
               </ItemTemplate>
           </asp:Repeater>

         

		<div class="row" id="home_alert">
				<div class="col-12">


					
					<div class="alert alert-danger alert-dismissable" id="home_successAlert">
                        <asp:Button runat="server" ID="btn_alert" CssClass="close" Text="&times;" />
						
                        <!-- <button type="button" class="close" data-dismiss="alert">&times;</button> --> 
						
						<asp:Repeater ID="rpt_display_alert" runat="server">
                            <ItemTemplate>
                                <h4><i class="fa fa-warning"></i><%#Eval("Title") %></h4>

                        <asp:Label runat="server" ID="lbl_alert" Text='<%#Eval("Message") %>' /> 
                            </ItemTemplate>
						</asp:Repeater>
                        
				
					</div><!-- end alert -->
					
				</div><!-- end col-12 -->
			</div><!-- end bigCallout -->

		<div class="row" id="timeline-quicklinks">
			
				<div class="col-lg-7">
					<h3>NEWS & EVENTS</h3>
					<div id="timeline" >
                         
                    <!-- the following two menu cannot be converted due to an infinite loop in calling the server 
                        when configuring the HTML ID, due to javascript attached to their names --> 
						
                        <ul id="dates">
							<li><a href="#1900">08/13</a></li>
							<li><a href="#1930">07/13</a></li>
							<li><a href="#1944">06/13</a></li>
							<li><a href="#1950">05/13</a></li>
							
							
						</ul>
                      
						<ul id="issues" >
							<li id="1900">
								<img src="App_Themes/images/1.png" />
								<h1 >August 2013</h1>
								<p>Cornhole trust fund photo booth Williamsburg roof party. Photo booth pickled four loko fashion axe Pinterest synth.</p>
							</li>
							<li id="1930">
								<img src="App_Themes/images/2.png"/>
								<h1>July 2013</h1>
								<p>Cornhole trust fund photo booth Williamsburg roof party. Photo booth pickled four loko fashion axe Pinterest synth.</p>
							</li>
							<li id="1944">
								<img src="App_Themes/images/3.png" />
								<h1>June 2013</h1>
								<p>Cornhole trust fund photo booth Williamsburg roof party. Photo booth pickled four loko fashion axe Pinterest synth. </p>
							</li>
							<li id="1950">
								<img src="App_Themes/images/4.png" />
								<h1>May 2013</h1>
								<p>Cornhole trust fund photo booth Williamsburg roof party. Photo booth pickled four loko fashion axe Pinterest synth.</p>
							</li>
							
							
						</ul>
						<div id="grad_left"></div>
						<div id="grad_right"></div>
                        <asp:HyperLink runat="server" ID="next" ClientIDMode="Static" NavigateUrl="#" Text="+" /> 
                        <asp:HyperLink runat="server" ID="prev" ClientIDMode="Static" NavigateUrl="#" Text="-" /> 

					</div> <!-- end timeline -->


				</div> <!-- end col-7 -->

				<div class="col-lg-5" id="home_quick_links">
					<h3>QUICK LINKS</h3>
					<div class="list-group">

                         <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Planning Your Stay</h4><i class='fa fa-play'></i>" /> 

                         <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Visiting the Hospital</h4><i class='fa fa-play'></i>" /> 
						
                        
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Public Report</h4><i class='fa fa-play'></i>" /> 
					

                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Employment Opportunities</h4><i class='fa fa-play'></i>" /> 
						

                    
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Contact Us</h4><i class='fa fa-play'></i>" /> 

                    
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="#" CssClass="list-group-item" Text="<h4 class='list-group-item-heading'>Donate Now</h4><i class='fa fa-play'></i>" /> 
					
						

				</div><!-- end list-group -->

					
				</div> <!-- end col-5 -->

			

		</div><!-- end timeline-quicklinks -->
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
		</div><!-- end home-program-highlights -->

	</div> <!-- end main -->

</asp:Content>


