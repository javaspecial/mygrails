<html>
<head>
    <title>POP - Homepage</title>
    <meta name="layout" content="main" />
    <g:javascript library='jquery'/>
    <g:javascript src="${resource(dir:'js',file:'registration.js')}" />
</head>
<body>
<g:if test="${session?.user}">
</g:if>
<g:else>
    <g:form class="simpleform" style="width:50%;" url="&#91;controller:'user',action:'login'&#93;">
        <fieldset>
            <legend>Login</legend>
            <p class="info">
                Please login with your username and password. <br />
                Don't have an account?
                <g:link onclick="callRegistrationLink();" id="click_goto_registration">Sign up now!</g:link>
            </p>
            <g:if test="${flash.message}">
                <div class="message">${flash.message}</div>
            </g:if>
            <p>
                <label for="username">Username</label>
                <g:textField name="username" />
            </p>
            <p>
                <label for="password">Password</label>
                <g:passwordField name="password" />
            </p>
            <p class="button">
                <label>&nbsp;</label>
                <g:submitButton class="button" name="submitButton" value="Login" />
            </p>
        </fieldset>
    </g:form>
</g:else>
</body>
</html>