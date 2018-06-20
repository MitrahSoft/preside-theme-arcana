<cfparam name="args.title"                  field="page.title"               editable="true" />
<cfparam name="args.main_content"           field="page.main_content"        editable="true" />
<cfparam name="args.subheading"             field="page.subheading"     	 editable="true" />

<cfscript>
	prc.body_class = "no-sidebar";
</cfscript>

<cfoutput>

	<!-- Main -->
	<section class="wrapper style1">
		<div class="container">
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
	</section>

</cfoutput>