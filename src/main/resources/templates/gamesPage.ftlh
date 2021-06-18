<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">





<@c.page>
    <div class="container">
        <div class="row">
            <div class="border  col-md-6">
                <div class="text-center">
                    <#if tableGames.filenameTableGames??>
                        <p><img src="/gamesimg/${tableGames.filenameTableGames}" height=300px, width=300px  class="mr-3"></p>
                    </#if>
                </div>
                <p> <button type="button" class="btn btn-primary">Подписаться</button> <button type="button" class="btn btn-primary">Добавить в заказ</button> </p>
            </div>
            <div class="border col">
                <h2 class="text-center">${tableGames.nameTableGames}</h2>
                <h3>Стоимость залога</h3>
                <h3>${tableGames.basecost}</h3>
                <h3>Стоимость проката</h3>
                <h3>${tableGames.arcost}</h3>
                <h3>Рейтинг пользователей </h3>
                <h3>	&#9733; 7/10</h3>
                <h3>Оценило пользователей</h3>
                <h3>300</h3>
                <button type="button" class="btn btn-primary btn-sm">Оценить</button>
            </div>
        </div>

        <div class="row">
            <div class="border  col">
                <h5>Описание игры</h5>
                <p>${tableGames.discriptionTableGames}</p>
            </div>
        </div>

        <div class="row">
            <div class="border  col">
                <h5>Комплектация</h5>
                <ul class="list-group">
                    <li class="list-group-item list-group-item-dark">Правила игры - 1</li>
                    <li class="list-group-item list-group-item-dark">Карточки - 200</li>
                    <li class="list-group-item list-group-item-dark">d-20 1</li>
                    <li class="list-group-item list-group-item-dark">Шестигранные дайсы - 2</li>
                </ul>
            </div>
            <div class="border  col">
                <h5>Характеристики игры</h5>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>
                            Характеристика
                        </th>
                        <th>
                            Значение
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            Тип игры
                        </td>
                        <td>
                            ${tableGames.type.nameType}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Количество игроков
                        </td>
                        <td>
                            ${tableGames.minCountPlayers}-${tableGames.maxCountPlayers}
                        </td>

                    </tr>
                    <tr>
                        <td>
                            Среднее время игры
                        </td>
                        <td>
                            ${tableGames.minTime}-${tableGames.maxTime}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Динамичность
                        </td>
                        <td>
                            ${tableGames.dynamics.nameTag}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Сложность игры
                        </td>
                        <td>
                            ${tableGames.complexity.nameTag}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Среднее время изучение правил
                        </td>
                        <td>
                            ${tableGames.analysis}
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>

        <div class="row">
            <div class="border col">
                <h5>Отзывы</h5>
                <div class="media mt-2">
                    <img src="/staticimg/user.jpg" class="mr-3" height=64px width=64px>
                    <div class="media-body">
                        <h5 class="mt-0">Имя пользователя</h5>
                        Какой-то огромный отзыв Какой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзыв
                    </div>
                </div>
                <div class="media mt-2">
                    <img src="/staticimg/user.jpg" class="mr-3" height=64px width=64px>
                    <div class="media-body">
                        <h5 class="mt-0">Имя пользователя</h5>
                        Какой-то огромный отзыв Какой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзывКакой-то огромный отзыв
                    </div>
                </div>
            </div>
        </div>

    </div>
</@c.page>

