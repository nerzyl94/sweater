<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>

<@common.page>
    <div>Please registrate your account</div>

        ${message}

    <@login.login "/registration" />
</@common.page>