<cfparam name="args.banner_title"       field="homepage.banner_title"       editable="false" />
<cfparam name="args.banner_subTitle"    field="homepage.banner_subTitle"    editable="false" />
<cfparam name="args.main_content"    		field="homepage.middle_content"     editable="false" />
<cfparam name="args.banner_moreLink"    editable="false" />
<cfparam name="args.main_image"    			field="page.main_image"							editable="false" />

<cfscript>
	prc.body_class = "homepage";
</cfscript>

<cfoutput>
	<!-- Banner -->
	<section id="banner">
		<cfif !isEmpty(args.main_image)>
			#renderAsset(assetid=args.main_image)#
		</cfif>
		<cfif !isEmpty(args.banner_title) || !isEmpty(args.banner_subTitle) || !isEmpty(args.banner_moreLink)>
			<header>
				<cfif !isEmpty(args.banner_title) || !isEmpty(args.banner_subTitle)>
					<h2>
						#args.banner_title#
						<cfif NOT IsEmpty(args.banner_subTitle)>
							<em> #args.banner_subTitle# </em>
						</cfif>
					</h2>
				</cfif>

				<cfif !isEmpty(args.banner_title) || !isEmpty(args.banner_subTitle)>
					<a href="#args.banner_moreLink#" class="button">#args.banner_moreLinkTitle#</a>
				</cfif>

			</header>
		</cfif>
	</section>

	#args.main_content#

</cfoutput>