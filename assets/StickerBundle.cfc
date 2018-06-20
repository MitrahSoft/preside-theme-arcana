component output=false {

	public void function configure( bundle ) output=false {

		bundle.addAsset( id="arcana-jq-jquery"        	, path="/js/lib/jquery.min.js" );
		bundle.addAsset( id="arcana-jq-dropotron"     	, path="/js/lib/jquery.dropotron.min.js" );
		bundle.addAsset( id="arcana-js-skel"     	  	, path="/js/lib/skel.min.js" );
		bundle.addAsset( id="arcana-js-util"     	 	, path="/js/lib/util.js" );
		bundle.addAsset( id="arcana-js-arcana-main"    	, path="/js/lib/arcana-main.js" );
		bundle.addAsset( id="arcana-css-arcana-main"   	, path="/css/lib/arcana-main.css" );
	}
}