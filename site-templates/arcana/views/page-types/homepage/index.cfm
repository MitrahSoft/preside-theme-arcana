<cfparam name="args.banner_title"       field="homepage.banner_title"       editable="true" />
<cfparam name="args.banner_subTitle"    field="homepage.banner_subTitle"    editable="true" />
<cfparam name="args.main_content"    	field="homepage.middle_content"     editable="true" />
<cfparam name="args.banner_moreLink"     editable="false" />

<cfscript>
	prc.body_class = "homepage";
</cfscript>

<cfoutput>
	<!-- Banner -->
	<section id="banner">
		<header>
			<h2>
				#args.banner_title#
				<cfif NOT IsEmpty(args.banner_subTitle)>
					<em> #args.banner_subTitle# </em>
				<cfelse>
					<em> "Another fine freebie by HTML5 UP" </em>
				</cfif>
			</h2>
			
			<a href="#args.banner_moreLink#" class="button">#args.banner_moreLinkTitle#</a>
		</header>
	</section>

	#args.main_content#

</cfoutput>