<cfparam name="args.title" 		field="gigantic_heading.title" 		editable="true" />
<cfparam name="args.subTitle" 	field="gigantic_heading.subTitle"   editable="true" />


<cfoutput>
	<!--- gigantic heading --->
	<section class="wrapper style2">
		<div class="container">
			<header class="major">
				<h2>#args.title#</h2>
				<p>#args.subTitle#</p>
			</header>
		</div>
	</section>
</cfoutput>