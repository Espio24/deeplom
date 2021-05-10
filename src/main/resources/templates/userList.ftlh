<#import "parts/common.ftlh" as c>

<@c.page>
Список пользователей

    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <#list users>
            <#items as user>
              <tr>
                  <td>${user.username}</td>
                  <td><#list user.roles>
                      <#items as role>
                          ${role}<#sep >,
                      </#items>
                  </#list></td>
                  <td><a href="/user/${user.id}">edit</a> </td>
              </tr>
            </#items>
        </#list>
        </tbody>
    </table>

</@c.page>