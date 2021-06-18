<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">


<@c.page>
    <#include "parts/gameEdit.ftlh">
    <h1>Список игр</h1>
    <div class="card-columns mt-3">
        <#list tablegames>
            <#items as games>
                <div class="card mx-auto">
                    <div class="card-body">
                        <h5 class="card-title"><a href="/tablegames/${games.idTableGames}">${games.nameTableGames}</a></h5>
                    </div>
                    <div>
                        <#if games.filenameTableGames??>
                            <p><a href="/tablegames/${games.idTableGames}"> <img src="/gamesimg/${games.filenameTableGames}" height=300px class="card-img-top"> </a> </p>
                        </#if>
                    </div>

                    <div class="card-footer">
                        <#if !isAdmin>
                            <a class="btn btn-primary"
                               href="">
                                Подписаться </a>
                            <a class="btn btn-primary"
                               href="">
                                Добавить в аренду </a>
                        </#if>


                        <#if isAdmin>
                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                   Действия
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item"  href="tablegames/${games.idTableGames}/edit">Редактировать</a>
                                    <a class="dropdown-item"  href="/tablegames/delete/${games.idTableGames}">Удалить</a>
                                    <a class="dropdown-item" href="#">Копии</a>
                                    <a class="dropdown-item" href="#">Добавить копию</a>
                                </div>
                            </div>

                        </#if>

                    </div>

                </div>
            </#items>

        </#list>

    </div>
</@c.page>