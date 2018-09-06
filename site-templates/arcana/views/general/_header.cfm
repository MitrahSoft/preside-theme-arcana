<cfscript>
	site 	   		= event.getSite();
	logo_text  		= !IsEmpty(site.logo_title) ? site.logo_title : "";
	logo_subheading = !IsEmpty(site.logo_subtitle) ? "<em>#site.logo_subtitle#</em>" : "";
    mainNav    		= renderViewlet( event="core.Navigation.mainNavigation", args={ depth = 2  });
</cfscript>

<cfoutput>
	<!-- Header -->
	<div id="header">
		
		<cfif !isEmpty(site.logo_image)>
			#renderAsset(assetID=site.logo_image)#
		</cfif>
		
		<cfif !isEmpty(logo_text) || !isEmpty(logo_subheading)>
			<h1><a href="/" id="logo">#logo_text# #logo_subheading#</a></h1>
		</cfif>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<cfset class = trim(listlast(mainNav,"~~~")) == event.getcurrentpageid() ? "current" : "" >
			    <li class="#class#">
			        <a href="/">
			            Home
			        </a>
			    </li>
				#listfirst(mainNav,"~~~")#
			</ul>
		</nav>
	</div>
</cfoutput>