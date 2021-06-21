<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h1>Заказы</h1>
    <ul class="class="list-unstyled">
    <#list orders>
        <#items as order>
            <li class="media mt-2 border">
                <p class="mr-2"><img src="/staticimg/user.jpg" class="mr-3" height=64px width=64px><br>
                    ${order.user.lastName}<br>
                    ${order.user.firstName}<br>
                    ${order.user.secondName}</p>
                <div class="media-body">
                    <div class="container border ">
                        <div class="row">
                            <div class="col align-self-start">
                                <h5 class="mt-0">Номер заказа ${order.idOrder}</h5>
                            </div>
                            <div class="col align-self-end">
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Действия
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Подтвердить</a>
                                        <a class="dropdown-item" href="#">Выдать</a>
                                        <a class="dropdown-item" href="#">Принять</a>
                                        <a class="dropdown-item" href="#">Проблема</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="list-unstyled">
                        <#list order.tableGames_or>
                            <#items as game>

                                <li class="media mt-3">
                                    <a class="mr-3" href="#">
                                        <img src="/gamesimg/${game.filenameTableGames}" height=64px width=64px class="mr-3" alt="...">
                                    </a>
                                    <div class="media-body">
                                        <h5 class="mt-0">${game.nameTableGames}</h5>
                                        Серийный номер 89456319756319
                                    </div>
                                </li>
                            </#items>
                        </#list>

                    </ul>
                    <small><b>Статус</b> ожидает подтверждения <b>Сумма заказа</b> 1000</small>
                </div>
            </li>
        </#items>
    </#list>

    </ul>
</@c.page>