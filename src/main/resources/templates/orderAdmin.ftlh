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
                                        <a class="dropdown-item" href="/admorder/confirm/${order.idOrder}">Подтвердить</a>
                                        <a class="dropdown-item" href="/admorder/issue/${order.idOrder}">Выдать</a>
                                        <a class="dropdown-item" href="/admorder/accept/${order.idOrder}">Принять</a>
                                        <a class="dropdown-item" href="#">Проблема</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="btn btn-primary" data-toggle="collapse" href="#multiCollapseExample${order?counter}" role="button" aria-expanded="false"
                       aria-controls="collapseExample">
                        Список игр
                    </a>
                    <div class="collapse multi-collapse" id="multiCollapseExample${order?counter}">
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
                    </div>
                    <br><b>Статус</b>  <div class="text-info"> ${order.orderStatuses.getName()}</div>
                    <b>Сумма заказа</b> 1000
                </div>
            </li>
        </#items>
    </#list>

    </ul>
</@c.page>