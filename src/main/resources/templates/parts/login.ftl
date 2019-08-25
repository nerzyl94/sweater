<#macro login path isRegisterForm>
    <form action="${path}" method="post">

        <div class="form-group row">
            <label class="col-sm-2 col-form-label">User Name: </label>
            <div class="col-sm-3">
                <input type="text" name="username" class="form-control"/>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-2 col-form-label"> Password:</label>
            <div class="col-sm-3">
                <input type="password" name="password" class="form-control"/>
            </div>
        </div>

        <div><input type="hidden" name="_csrf" value="${_csrf.token}"></div>

        <#if !isRegisterForm>
            <a href="/registration">Registration</a>
        </#if>

        <button class="btn btn-primary" type="submit" ><#if !isRegisterForm>Sign In <#else >Create</#if></button>
    </form>
</#macro>

<#macro logout>
    <div>
        <form action="/logout" method="post">
            <div><input type="hidden" name="_csrf" value="${_csrf.token}"></div>
            <button class="btn btn-primary" type="submit">Sign Out</button>
        </form>
    </div>
</#macro>