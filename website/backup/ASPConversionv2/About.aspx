<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content3" ContentPlaceHolderID="cph_main" Runat="Server">
    	<div class="container" id="main">
		

		<div id="master_content">

			<div id="about_content_image">

			</div> <!-- end about_content_image-->

			<div class="row">


				<div class="col-xs-12" id="about_nav">

					<div class="tabbable">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#about_tab1" data-toggle="tab">Public Report</a></li>
							<li><a href="#about_tab2" data-toggle="tab">Meet the Board</a></li>
							<li><a href="#about_tab3" data-toggle="tab">Strategic Plan</a></li>
							<li><a href="#about_tab4" data-toggle="tab">Donate Now</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="about_tab1">


								<p>Public Report</p>
							</div><!-- end tab-pane -->

							<div class="tab-pane" id="about_tab2">
								<p>
									Meet the board
								</p>

							</div><!-- end tab-pane -->

							<div class="tab-pane" id="about_tab3">
								<p>
									Strategic Plan
								</p>

							</div><!-- end tab-pane -->

							<div class="tab-pane" id="about_tab4">
								<p>
									Donate Now
								</p>

							</div><!-- end tab-pane -->
						</div><!-- end tab-content -->
					</div><!-- end tabbable -->
				</div><!-- end col-sm-12 -->
			</div> <!-- end row -->

		</div><!-- master_content -->
   </div> 
</asp:Content>

