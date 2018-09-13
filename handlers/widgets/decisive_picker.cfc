component output=false {

	property name="decisive_picker_service" inject="decisive_picker_service";
	property name="linksService" inject="linksService";


	public function index( event, rc, prc, args={} ) output=false {
		args.contentID     		= args.contentID 			?: "";

		if ( len(args.contentID) ) {
			args.content = decisive_picker_service.readContents( listQualify(args.contentID, "'") );
		}

		// Get LinkURL from Link Object
		for (i=1; i <= args.content.recordCount;i=i+1) {
			if(!isEmpty(args.content.link[i])) {
				args.content.link[i] = linksService.getLinkUrl(args.content.link[i]);
			}
		}

    return renderView(
			view = "widgets/decisive_picker/index"
		  , args = args
		);
	}

}
