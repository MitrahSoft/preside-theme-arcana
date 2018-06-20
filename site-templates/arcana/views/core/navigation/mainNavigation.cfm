<cfscript>
    menuItems   = args.menuItems    ?: [];
    homepageID  = args.homepageID   ?: "";
</cfscript>

<cfoutput>
    <cfloop array="#menuItems#" index="i" item="item">
        <cfset hasChildren = item.children.len() />
        <li class="<cfif item.id EQ event.getcurrentpageid()>current</cfif>">
            <a href="#event.buildLink( page=item.id )#">
                #item.title#
            </a>
            <cfif hasChildren>
                <ul>
                    #renderView( view='/core/navigation/mainNavigation', args={
                        menuItems               = item.children
                    })#
                </ul>
            </cfif>
        </li>
    </cfloop>
    ~~~#homepageID#
</cfoutput>