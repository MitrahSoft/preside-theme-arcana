<cfparam name="args.title"                  field="page.title"               		editable="true" />
<cfparam name="args.main_content"           field="page.main_content"        		editable="true" />
<cfparam name="args.sidebar"                field="page.sidebar_content"     		editable="true" />
<cfparam name="args.right_sidebar_content"  field="page.right_sidebar_content"     	editable="true" />
<cfparam name="args.subheading"             field="page.subheading"     	        editable="true" />

<cfscript>
	prc.body_class = "right-sidebar";
</cfscript>

<cfoutput>
	<!-- Main -->
	<section class="wrapper style1">
		<div class="container">
			<div class="row 200%">

				<div class="3u 12u(narrower)">
					<div id="sidebar1">
						#args.sidebar#
					</div>
				</div>
				<div class="6u 12u(narrower) important(narrower)">
					<div id="content">

						<!-- Content -->
						<article>
							<header>
								<h2>#args.title#</h2>
								<p>#args.subheading#</p>
							</header>

							#args.main_content#

						</article>

					</div>
				</div>
				<div class="3u 12u(narrower)">
					<div id="sidebar2">

						<!-- Sidebar -->
						#args.right_sidebar_content#

					</div>
				</div>
			</div>
		</div>
	</section>

</cfoutput>