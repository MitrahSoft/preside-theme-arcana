component {

	property name="presideObjectService" inject="presideObjectService";


    public query function readContents( required contentID ) {
    	return contents = presideObjectService.selectData(
    				objectName   	= "decisive_picker"
        			, selectFields 	= [ "title", "iconClass", "description", "link" ]
			        , filter       	= " id IN (#arguments.contentID#) "
			        , orderby      = "FIELD (id,#arguments.contentID#)"
				);
	}
}