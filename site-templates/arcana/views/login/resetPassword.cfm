<cfparam name="args.title"                  field="page.title" editable="true" />
<cfparam name="args.empty_password"         field="reset_password.empty_password"         default="You must supply a new password." />
<cfparam name="args.passwords_do_not_match" field="reset_password.passwords_do_not_match" default="The passwords you supplied do not match." />
<cfparam name="args.unknown_error"          field="reset_password.unknown_error"          default="An unknown error occurred while attempting to reset your password. Please try again." />

<cfparam name="rc.token"   default="" />
<cfparam name="rc.message" default="" />

<cfoutput>

    <section class="wrapper style1">
        <div class="container">
            <div id="content">

                <!-- Content -->
                <article>
                    <header>
                        <h2>#args.title#</h2>
                    </header>

                    <form action="#event.buildLink( linkTo='login.resetPasswordAction' )#" method="post">
                        <input type="hidden" name="token" value="#rc.token#" />
                        <div >
                            <label for="passwordField">#translateResource( uri="page-types.reset_password:newPassword.label" )#</label>
                            <input type="password" name="password" id="passwordField" >
                        </div>

                        <div >
                            <label for="passwordConfirmationField">#translateResource( uri="page-types.reset_password:confirmPassword.label" )#</label>
                            <input type="password" name="passwordConfirmation" id="passwordConfirmationField" >
                        </div><br/>

                        <div >
                            <p><a href="#event.buildLink( page="login" )#">#translateResource( uri="page-types.reset_password:returnToLoginLink.title" )#</a></p>
                            <button type="submit" class="button alt">#translateResource( uri="page-types.reset_password:submitButton.title" )#</button>
                        </div>
                    </form>
                </article>
            </div>
        </div>
    </section>
</cfoutput>