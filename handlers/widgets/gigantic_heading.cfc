component output=false {

	public function index( event, rc, prc, args={} ) output=false {

		args.title     		   	= args.title;
	    args.subTitle   		= args.subTitle;


        return renderView(
			view = "widgets/gigantic_heading/index"
		  , args = args
		);
	}

}
