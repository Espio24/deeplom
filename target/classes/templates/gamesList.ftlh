<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">


<@c.page>


    <h1>Список игр</h1>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
       aria-controls="collapseExample">
        Редактор игр
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="nameTableGames" placeholder="Название игры">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="discriptionTableGames" placeholder="Описание игры">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Сохранить игру</button>
                </div>
            </form>
        </div>
    </div>


    <div class="card-columns mt-2">
        <#list tablegames>
            <#items as games>
                <div class="card mx-auto">
                    <div class="card-body">
                        <h5 class="card-title"><a href="/games/${games.idTableGames}">${games.nameTableGames}</a></h5>
                    </div>
                </div>
            </#items>

        </#list>

    </div>
</@c.page>