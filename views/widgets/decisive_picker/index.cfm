<cfoutput>
	<!--- decisive_picker --->
	<section class="wrapper style1">
		<div class="container">
			<div class="row 200%">
				<cfif args.content.recordcount >
					<cfloop query="#args.content#">
						
						<section class="4u 12u(narrower)">
							<cfsavecontent variable="itemTemp">
								<div class="box highlight">
									<i class="icon major #args.content.iconClass#"></i>
									<h3>#args.content.title#</h3>
									<p>#args.content.description#</p>
								</div>
							</cfsavecontent>
							
							<cfif !isEmpty(args.content.link)>
								<a href="#args.content.link#">#itemTemp#</a>
							<cfelse>
								#itemTemp#
							</cfif>
						</section>

					</cfloop>
				</cfif>
			</div>
		</div>
	</section>
</cfoutput>