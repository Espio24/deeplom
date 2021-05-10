<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <div class="container">
        <#include "parts/userEdit.ftlh">
        <div class="row">
            <div class="border border-dark col-md-6">
                <div class="text-center">
                    <#if users.filenameUser??>
                        <p><img src="/profileimg/${users.filenameUser}" height=300px, width=300px  class="mr-3"></p>
                    </#if>
                </div>
            </div>
            <div class="border border-dark col">
                <h2 class="text-center">${users.username}</h2>
                <p> <button type="button" class="btn btn-primary">Подписаться</button> <button type="button" class="btn btn-primary">Написать сообщение</button> </p>
            </div>
        </div>
        <div class="row">
            <div class="border border-dark col-md-6">
                <div class="text-center">
                    А тут список ачивок
                </div>
            </div>
            <div class="border border-dark col">
            </div>
        </div>
    </div>
</@c.page>

