component output=false {

	public function index( event, rc, prc, args={} ) output=false {

		args.Title     		= args.Title;
	    args.link   		= args.link				?: "";
	    args.more_link   	= args.more_link		?: "";

        return renderView(
			view = "widgets/linkPicker/index"
		  , args = args
		);
	}

}
