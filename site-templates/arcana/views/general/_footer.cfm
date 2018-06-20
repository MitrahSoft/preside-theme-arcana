<cf_presideparam name="args.body" field="body" default="" />
<cfscript>
	site 	 		    = event.getSite();
	footer_copyright    = site.footer_copyright;
	id                  = site.id;
	footerlinks 		= site.footer_links;
	socialmedia 	    = site.footer_socialmedia;
</cfscript>

<cfoutput>
	<div id="footer">
		<div class="container">
			<div class="row">
				<cfif !IsEmpty( footerlinks )>
					<cfloop list="#footerlinks#" item="item">
						<section class="3u 6u(narrower) 12u$(mobilep)">
							#renderview(presideobject="footerlink_category", view="/general/_link-item", filter={ id = item }, orderby="sort_order asc")#
						</section>
					</cfloop>
				</cfif>
				<section class="6u 12u(narrower)">
					<cfif len(args.body)>
						<h3>Get In Touch</h3>
						#args.body#
					</cfif>
				</section>
			</div>
		</div>

		<ul class="icons">
			<cfif !IsEmpty( socialmedia )>
				<cfloop list="#socialmedia#" item="item">
					#renderview(presideobject="social_media", view="/general/_footer_social_link", filter={ id = item })#
				</cfloop>
			</cfif>
		</ul>

		<div class="copyright">
			<ul class="menu">
				<li>#footer_copyright#</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
	</div>
</cfoutput>