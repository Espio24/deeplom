<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">


<@c.page>

    <p>
        <a class="btn btn-primary mr-2" data-toggle="collapse" href="#tag" role="button" aria-expanded="false"
           aria-controls="collapseExample">
            Добавить тэг
        </a>
        <button class="btn btn-primary" type="button" data-toggle="collapse" href="#type" aria-expanded="false"
                aria-controls="collapseExample">
            Добавить тип
        </button>
    </p>
    <div class="collapse" id="tag">
        <form method="post">
            <input type="text" name="tag" class="form-control" placeholder="Тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <div class="form-group mt-2">
                <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
        </form>
    </div>

    <div class="collapse" id="type">
        <form method="post">
            <input type="text" name="type" class="form-control" placeholder="Тип">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <div class="form-group mt-2">
                <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
        </form>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Тэг</th>
            <th scope="col">Редактировать</th>
        </tr>
        </thead>
        <tbody>
        <#list tags>
            <#items as tag>
                <tr>
                    <td>${tag.nameTag}</td>
                    <td><a href="/tags/delete/${tag.idTag}"> Удалить </a> <a href="/tags/${tag.idTag}"> Обновить </a> </td>
                </tr>
            </#items>
        </#list>
        </tbody>
    </table>

    <table class="table mt-2">
        <thead>
        <tr>
            <th scope="col">Тип</th>
            <th scope="col">Редактировать</th>
        </tr>
        </thead>
        <tbody>
        <#list type>
            <#items as type>
                <tr>
                    <td>${type.nameType}</td>
                    <td><a href="/type/delete/${type.idType}"> Удалить </a> <a href="/type/${type.idType}"> Обновить </a> </td>
                </tr>
            </#items>
        </#list>
        </tbody>
    </table>








</@c.page>