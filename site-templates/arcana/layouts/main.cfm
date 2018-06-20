<cfscript>
	body     = renderView();
	mainNav  = renderViewlet( "core.navigation.mainNavigation" );
	header   = renderView( view="/general/_header" );
	footer   = renderView( view="/general/_footer" , presideObject = "site", id = event.getSiteid() );

	event.include( assetId="arcana-jq-jquery"               )
        .include( assetId="arcana-jq-dropotron"             )
        .include( assetId="arcana-js-skel"              	)
        .include( assetId="arcana-js-util"              	)
        .include( assetId="arcana-js-arcana-main"           )
        .include( assetId="arcana-css-arcana-main"          );

</cfscript>

<cfoutput>
 	<html>
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			#event.renderIncludes( "css" )#
			#event.renderIncludes( "js", "top" )#
		</head>
		<body>
			<div id="page-wrapper">
				#header#
				#body#
				#footer#
				#event.renderIncludes( "js" )#
			</div>
		</body>
	</html>
</cfoutput>