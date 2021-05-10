<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">





<@c.page>
    <div class="container">
        <div class="row">
            <div class="border border-dark col-md-6">
                <div class="text-center">
                    <#if tableGames.filenameTableGames??>
                        <p><img src="/gamesimg/${tableGames.filenameTableGames}" height=300px, width=300px  class="mr-3"></p>
                    </#if>
                </div>
                <p> <button type="button" class="btn btn-primary">Подписаться</button> <button type="button" class="btn btn-primary">Добавить в заказ</button> </p>
            </div>
            <div class="border border-dark col">
                <h2 class="text-center">${tableGames.nameTableGames}</h2>
                <h3>Базовая цена проката: </h3>
                <h3>500р</h3>
                <h3>Рейтинг пользователей </h3>
                <h3>	&#9733; 7/10</h3>
                <h3>Оценило пользователей</h3>
                <h3>300</h3>
                <button type="button" class="btn btn-primary btn-sm">Оценить</button>
            </div>
        </div>

        <div class="row">
            <div class="border border-dark col">
                <h5>Описание игры</h5>
                <p>${tableGames.discriptionTableGames}</p>
            </div>
        </div>

        <div class="row">
            <div class="border border-dark col">
                <h5>Комплектация</h5>
            </div>
            <div class="border border-dark col">
                <h5>Характеристики игры</h5>
            </div>
        </div>

        <div class="row">
            <div class="border border-dark col">
                <h5>Отзывы</h5>
            </div>
        </div>

    </div>
</@c.page>

