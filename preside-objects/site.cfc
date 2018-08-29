/**
 * Site specific
 *
 */
component {

	property name="footer_links" 		type="string" dbtype="varchar";
	property name="footer_socialmedia"  type="string" dbtype="varchar";
	property name="footer_title" 		type="string" dbtype="varchar";
	property name="footer_copyright"    type="string" dbtype="varchar";
	property name="logo_image" 		    type="string" dbtype="varchar";
	property name="logo_image"	relationship="many-to-one" relatedTo="asset"	allowedTypes="image";
	property name="logo_title" 		    type="string" dbtype="varchar";
	property name="logo_subtitle" 		type="string" dbtype="varchar";
	property name="body" 				              dbtype="text";

}