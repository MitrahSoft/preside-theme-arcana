component {
	property name="presideObjectService" inject="presideObjectService";
	property name="siteTreeSvc" inject="siteTreeService";

	private string function mainNavigation( event, rc, prc, args={} ) {

		var siteID = presideObjectService.selectData(
			  		  objectName 	     = "site"
			  		, selectFields       = ["id"]
				).id;

		var returnStruct   = {};

		var homepageArgs   = {
			  maxRows            = 1
			, orderBy            = "_hierarchy_sort_order"
			, selectFields       = ["id","title"]
			, allowDraftVersions = false
			, filter             = {
				  _hierarchy_depth = 0
				, active           = true
				, trashed          = false
				, site 			   = siteID
			  }
			, objectName  		   = "page"
		};

		var homepage = presideObjectService.selectData( argumentCollection=homepageArgs );

		var pages = presideObjectService.selectData(
		  		  objectName 	= "page"
				, orderBy            = "_hierarchy_sort_order"
				, selectFields       = ["page.id","page.title","page_type","parent_page","site","page.navigation_title"]
				, filter             = "active = :active and trashed = :trashed AND site IN (:site) AND exclude_from_navigation = :exclude_from_navigation"
				, filterParams       = {
					  active    	   			= true
					, trashed  		   			= false
					, exclude_from_navigation 	= 0
					, site 			   			= siteID
				}
			);

		args.menuItems  = _buildTree( pages, homepage.id );
		args.homepageID = homepage.id ;

		return renderView( view="/core/navigation/mainNavigation", args=args );
	}

	private array function _buildTree( required query pagesQuery, required string parentId ) {

		var branch 	= [];
		var page 	= [];

		for ( page in arguments.pagesQuery ) {

			page["hasChildren"] = false;
			page["children"] 	= [];

			if ( page.parent_page == arguments.parentId ) {

				var children = _buildTree( pagesQuery, page.id );
				if ( children.len() ) {
					page["hasChildren"] = true;
					page["children"] 	= children;
				}
				branch.append( page );
			}
		}

		return branch;
	}

}