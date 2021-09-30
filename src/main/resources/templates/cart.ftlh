<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h3>Корзина</h3>
    <div class="container border">
        <div class="row">
            <div class="border col-md-6">
                <#list tablegames>
                    <#items as game>
                <div class="row bg-white mt-2">
                    <div class="col-md-2">
                        <img class="mt-2" src="/gamesimg/${game.filenameTableGames}" width=50px height=50px>
                    </div>
                    <div class="col">
                        <h6>${game.nameTableGames}</h6>
                        <p>
                            <small>Сумма залога: ${game.basecost}</small>
                            <small>Сумма аренды за день: ${game.arcost}</small>
                        </p>

                    </div>
                    <button type="submit" class="btn btn-light"> <img src="/staticimg/cross.png" width=20px height=20px></button>
                </div>
                    </#items>
                </#list>
            </div>
            <div class="border col">
                <div class="text-center">
                    <h1>Сумма заказа</h1>
                </div>
                <div class="text-center">
                    <h1>1500</h1>
                </div>
                <div class="text-center">
                    <form method="post">
                        <p>
                        <div class="form-group">
                            <h6>Дата выдачи</h6>
                            <input type="datetime-local" class="form-control" name="dataIssue"
                                   placeholder="Дата выдачи">
                            <h6>Дата возврата</h6>
                            <input type="datetime-local" class="form-control" name="dataRefund"
                                   placeholder="Дата возврата">
                            <input type="hidden" class="form-control" name="_csrf" value="${_csrf.token}"/>
                        </div>
                        </p>
                    <button type="submit" class="btn btn-primary">Оформить заказ</button>
                    </form>
                </div>
            </div>
        </div>

    </div>

</@c.page>