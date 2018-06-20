<cfparam name="args.title"                            field="page.title" editable="true" />
<cfparam name="args.loginId_not_found"                field="forgotten_password.loginId_not_found" default="Sorry, your email address is not found in the system." />
<cfparam name="args.invalid_reset_token"              field="forgotten_password.invalid_reset_token" default="Invalid reset token." />
<cfparam name="args.password_reset_instructions_sent" field="forgotten_password.password_reset_instructions_sent" default="Instructions for setting your password have been sent to your registered email account." />

<cfparam name="rc.loginId" default="" />
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
                    <form action="#event.buildLink( linkTo='login.sendResetInstructions' )#" method="post">
                        <div>
                            <label for="loginIdField">#translateResource( uri="page-types.forgotten_password:emailaddress.label" )#</label>
                            <input type="email" name="loginId" id="loginIdField">
                        </div>

                        <div>
                            <p><a href="#event.buildLink( page="login" )#">#translateResource( uri="page-types.forgotten_password:returnToLoginLink.title" )#</a></p>
                            <button type="submit" class="button alt">#translateResource( uri="page-types.forgotten_password:submitButton.title" )#</button>
                        </div>
                    </form>
                </article>
            </div>
        </div>
    </section>
</cfoutput>