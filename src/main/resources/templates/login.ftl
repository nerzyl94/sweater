<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>
<@common.page>
    <@login.login "/login" />
    <a href="/registration">Registration</a>
</@common.page>