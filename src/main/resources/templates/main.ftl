<#import "parts/common.ftl" as common>

<@common.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="tag" value="${tag?ifExists}" class="form-control" placeholder="Search by tag">
                <button type="submit" class="btn btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>

    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false">
        Add new message
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div><input type="hidden" name="_csrf" value="${_csrf.token}"></div>
                <div class="form-group">
                    <input class="form-control" type="text" name="text" placeholder="Please enter your text">
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" name="tag" placeholder="Please enter your tag">
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input class="form-control" type="file" name="file" id="customFile" placeholder="Please load your file">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary" type="submit">Add message</button>
                </div>
            </form>
        </div>
    </div>

    <div class="mb-3"><h5>List of messages:</h5></div>
    <div class="card-columns">
        <#list messages as message>
            <div class="card my-3">
                <#if message.filename??>
                    <img class="card-img-top" src="/img/${message.filename}">
                </#if>
                <div class="m-2">
                    ${message.text}
                    ${message.tag}
                </div>
                <div class="card-footer text-muted">
                    ${message.authorName}
                </div>
            </div>
        <#else >
            No messages
        </#list>
    </div>
</@common.page>