<cfparam name="args.title" 		field="linkPicker.title" 		editable="true" />
<cfparam name="args.link" 		field="linkPicker.link"   editable="true" />
<cfparam name="args.more_link" 		field="linkPicker.link"   editable="true" />


<cfoutput>
	<section>
		<h3>#args.title#</h3>
		<ul class="links">
			<cfloop list="#args.link#" index="i">
				<li>
					<a href="#event.buildLink( i )#">
						#renderlink(id=i)#
					</a>
				</li>
			</cfloop>
		</ul>
		<footer>
			<a href="#args.more_link#" class="button">
				#translateResource( uri="widgets.linkPicker:field.more_btn.title" )#
			</a>
		</footer>
	</section>
</cfoutput>



