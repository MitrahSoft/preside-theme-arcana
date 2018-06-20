component output=false {

	property name="portfolio_picker_service" inject="portfolio_picker_service";

	public function index( event, rc, prc, args={} ) output=false {

		args.contentID     		= args.contentID 			?: "";

		if ( len(args.contentID) )
			args.content = portfolio_picker_service.readContents( listQualify(args.contentID, "'") );


        return renderView(
			view = "widgets/portfolio_picker/index"
		  , args = args
		);
	}

}
