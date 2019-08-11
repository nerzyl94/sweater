<#import "parts/common.ftl" as common>

<@common.page>
    <div>User edit profile</div>
    <form action="/user" method="post">
        <input type="hidden" value="${_csrf.token}" name="_csrf">

        <input type="hidden" value="${user.id}" name="userId">
        <input type="text" value="${user.username}" name="username">
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <button type="submit">Save</button>
    </form>
</@common.page>