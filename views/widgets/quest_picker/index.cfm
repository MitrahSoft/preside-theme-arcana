<cfparam name="args.quest_header" 		field="quest_picker.quest_header" 	   editable="true" />
<cfparam name="args.quest_link" 	    field="quest_picker.quest_link"  editable="true" />
<cfparam name="args.quest_link_title" 	field="quest_picker.quest_link_title"  editable="true" />


<cfoutput>
	<!--- quest_picker --->
	<section id="cta" class="wrapper style3">
		<div class="container">
			<header>
				<h2>#args.quest_header#</h2>
				<a href="#args.quest_link#" class="button">#args.quest_link_title#</a>
			</header>
		</div>
	</section>
</cfoutput>