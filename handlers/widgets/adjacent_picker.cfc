component output=false {

	public function index( event, rc, prc, args={} ) output=false {

		args.adjacent_header     	= args.adjacent_header;
	    args.adjacent_link   		= args.adjacent_link;
	    args.adjacent_link_title   	= args.adjacent_link_title;
	    args.adjacent_desc   		= args.adjacent_desc;


        return renderView(
			view = "widgets/adjacent_picker/index"
		  , args = args
		);
	}

}
