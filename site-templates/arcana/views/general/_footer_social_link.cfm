<cfparam name="args.link" 		default="" field="social_media.link" />
<cfparam name="args.class_name" default="" field="social_media.class_name" />
<cfoutput>
	<li>
		<a href="#args.link#" class="icon #args.class_name#" target="_blank" ></a>
	</li>
</cfoutput>