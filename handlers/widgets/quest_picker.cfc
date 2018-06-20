component output=false {

	public function index( event, rc, prc, args={} ) output=false {

		args.quest_header     		= args.quest_header;
	    args.quest_link   			= args.quest_link;
	    args.quest_link_title   	= args.quest_link_title;


        return renderView(
			view = "widgets/quest_picker/index"
		  , args = args
		);
	}

}
