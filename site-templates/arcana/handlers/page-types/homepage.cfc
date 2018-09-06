component {
	property name="linksService" inject="linksService";
	property name="linkDao" inject="presidecms:object:link";

	private function index( event, rc, prc, args={} ) {
		param name="args.link" default=""; 

		var link = linkDao.selectData( id=prc.presidepage.banner_morelink );
		args.banner_moreLink = linksService.getLinkUrl(link.id);
		args.banner_moreLinkTitle = link.title;

		return renderView(
			view          = "/page-types/homepage/index"
		, presideObject = "homepage"
		, id            = event.getCurrentPageId()
		, args          = args
		);
	}
}