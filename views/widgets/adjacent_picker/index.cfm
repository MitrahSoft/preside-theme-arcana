<cfparam name="args.adjacent_header" 		field="adjacent_picker.adjacent_header" 	   editable="true" />
<cfparam name="args.adjacent_link" 	    field="adjacent_picker.adjacent_link"  editable="true" />
<cfparam name="args.adjacent_link_title" 	field="adjacent_picker.adjacent_link_title"  editable="true" />
<cfparam name="args.adjacent_desc" 	field="adjacent_picker.adjacent_desc"  editable="true" />


<cfoutput>
	<!--- adjacent_picker --->
	<section>
		<h3>#args.adjacent_header#</h3>
		<p>#args.adjacent_desc#</p>
		<footer>
			<a href="#args.adjacent_link#" class="button">#args.adjacent_link_title#</a>
		</footer>
	</section>
</cfoutput>


