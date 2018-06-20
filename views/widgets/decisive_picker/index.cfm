<cfoutput>
	<!--- decisive_picker --->
	<section class="wrapper style1">
		<div class="container">
			<div class="row 200%">
				<cfif args.content.recordcount >
					<cfloop query="#args.content#">
						<section class="4u 12u(narrower)">
							<div class="box highlight">
								<i class="icon major #iconClass#"></i>
								<h3>#title#</h3>
								<p>#description#</p>
							</div>
						</section>
					</cfloop>
				</cfif>
			</div>
		</div>
	</section>
</cfoutput>