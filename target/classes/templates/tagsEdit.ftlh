<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">


<@c.page>

    <div>${tag.nameTag}</div> <br>

        <button class="btn btn-primary mr-2" data-toggle="collapse" href="#tag" role="button" aria-expanded="false"
           aria-controls="collapseExample">
            Изменить тэг
        </button>

    <div class="collapse" id="tag">
        <form method="post">
            <input type="text" name="nameTag" class="form-control" placeholder="Тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="hidden" class="form-control" name="idTag" value="<#if tag??>${tag.idTag}</#if>"/>

            <div class="form-group mt-2">
                <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
        </form>
    </div>

</@c.page>










