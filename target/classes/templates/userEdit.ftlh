<#import "parts/common.ftlh" as c>

<@c.page>
User editor

    <form action="/user" method="post">
        <input class="form-control" type="text" value="${user.username}" name="username">
        <#list roles>
            <#items as role>
                <div>
                <label><input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked","")}>${role}</label>
                </div>
            </#items>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button class="btn btn-primary" type="submit">Сохранить</button>
    </form>


</@c.page>