component {

	property name="presideObjectService" inject="presideObjectService";


    public query function readContents( required contentID ) {
    	return contents = presideObjectService.selectData(
    				objectName   	= "portfolio_picker"
        			, selectFields 	= [ "title", "image", "description","link" ]
			        , filter       	= " id IN (#arguments.contentID#) "
			        , orderby      = "title"
				);
	}
}