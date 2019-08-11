<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>

<@common.page>
    <@login.logout />

    <div>
        <form method="post">
            <div><input type="hidden" name="_csrf" value="${_csrf.token}"></div>
            <input type="text" name="text" placeholder="Please enter your text">
            <input type="text" name="tag" placeholder="Please enter your tag">
            <button type="submit">Add message</button>
        </form>
    </div>

    <div>
        <form method="get" action="/main">
            <input type="text" name="tag" value="${tag}">
            <button type="submit">Find message</button>
        </form>
    </div>

    <div>List of messages:</div>
    <div>
        <#list messages as message>
            <div>
                ${message.id}
                ${message.text}
                ${message.tag}
                ${message.authorName}
            </div>
            <#else >
            No messages
        </#list>
    </div>
</@common.page>