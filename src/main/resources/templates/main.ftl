<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as login>

<@common.page>
    <@login.logout />
    <span><a href="/user">Users list</a></span>

    <div>
        <form method="post" enctype="multipart/form-data">
            <div><input type="hidden" name="_csrf" value="${_csrf.token}"></div>
            <input type="text" name="text" placeholder="Please enter your text">
            <input type="text" name="tag" placeholder="Please enter your tag">
            <input type="file" name="file" placeholder="Please load your file">
            <button type="submit">Add message</button>
        </form>
    </div>

    <div>
        <form method="get" action="/main">
            <input type="text" name="tag" value="${tag?ifExists}">
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
                <div>
                    <#if message.filename??>
                        <img src="/img/${message.filename}">
                    </#if>
                </div>
            </div>
            <#else >
            No messages
        </#list>
    </div>
</@common.page>