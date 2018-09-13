/**
 * @dataManagerGroup      decisive_picker
 * @datamanagergridfields title,iconClass,description
 */
component {
    property name="title"         type="string"  dbtype="varchar" maxlength="200" uniqueindexes="title" control="textinput";
    property name="iconClass"     type="string"  dbtype="varchar" maxlength="50" control="textinput";
    property name="description"   type="string"  dbtype="text" control="richeditor";
	property name="link"     	  type="string"  dbtype="varchar" relatedto="link" control="linkpicker";

}