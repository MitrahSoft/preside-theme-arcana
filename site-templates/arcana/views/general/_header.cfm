<cfscript>
	site 	   		= event.getSite();
	logo_text  		= !IsEmpty(site.logo_title) ? site.logo_title : "arcana";
	logo_subheading = !IsEmpty(site.logo_subtitle) ? site.logo_subtitle : "Another fine freebie by HTML5 UP";
    mainNav    		= renderViewlet( event="core.Navigation.mainNavigation", args={ depth = 2  });
</cfscript>

<cfoutput>
	<!-- Header -->
	<div id="header">
		<h1><a href="/" id="logo">#logo_text# <em>#logo_subheading#</em></a></h1>

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