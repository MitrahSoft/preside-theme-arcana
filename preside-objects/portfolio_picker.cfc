/**
 * @dataManagerGroup      portfolio_picker
 * @datamanagergridfields title,image,link,description
 */
component {
    property name="title"      type="string"  dbtype="varchar" maxlength="200" uniqueindexes="title";
    property name="image" relatedTo="asset" relationship="many-to-one" allowedTypes="image" ondelete="cascade-if-no-cycle-check" onupdate="cascade-if-no-cycle-check";
    property name="link"    type="string"  dbtype="text" control="textinput";
    property name="description"    type="string"  dbtype="text" control="textarea";

}