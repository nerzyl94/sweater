<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>

<@common.page>
    <div class="mb-3">
        <h5>Please create your account</h5>
    </div>

        ${message?ifExists}

    <@login.login "/registration" true/>
</@common.page>