component output=false {

	property name="decisive_picker_service" inject="decisive_picker_service";

	public function index( event, rc, prc, args={} ) output=false {

		args.contentID     		= args.contentID 			?: "";

		if ( len(args.contentID) )
			args.content = decisive_picker_service.readContents( listQualify(args.contentID, "'") );


        return renderView(
			view = "widgets/decisive_picker/index"
		  , args = args
		);
	}

}
