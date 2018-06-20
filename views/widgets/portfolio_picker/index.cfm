<cfoutput>
	<section class="wrapper style1">
		<div class="container">
			<cfset flag = 2 >
			<cfif args.content.recordcount >
				<cfloop query="#args.content#">
					<cfif flag MOD 2 EQ 0 >
						<div class="row">
					</cfif>
						<section class="6u 12u(narrower)">
							<div class="box post">
								<a href="#link#" class="image left">
									<img src="#event.buildLink( assetId=image )#" alt="" height="157" width="174">
								</a>
								<div class="inner">
									<h3>#title#</h3>
									<p>#description#</p>
								</div>
							</div>
						</section>
					<cfif flag MOD 2 NEQ 0 >
						</div>
					</cfif>
					<cfset flag = flag + 1 >
				</cfloop>
			</cfif>
		</div>
	</section>
</cfoutput>
