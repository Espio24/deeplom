<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">


<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/gamerooms" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter?if_exists}" placeholder="Поиск по городу">
                <button type="submit" class="btn btn-primary ml-2">Найти</button>
            </form>
        </div>
    </div>
    <#include "parts/gameRoomAdd.ftlh">
    <div class="card-columns mt-3">

        <#list gamesroom>
            <#items as room>
                <div class="card mx-auto">
                    <div class="card-header">
                       <h5 class="card-tittle">${room.nameGameRoom}</h5>
                        <a href="/user/profile/${room.user.id}"> ${room.userName}</a>
                    </div>

                    <div>
                        <#if room.filenameGameRoom??>
                            <p><a href="/gamerooms/${room.idGameRoom}"> <img src="/roomimg/${room.filenameGameRoom}" height=300px class="card-img-top"> </a> </p>
                        </#if>
                    </div>

                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Когда: ${room.dateGameRoom}</li>
                        <li class="list-group-item">В каком городе: ${room.cityGameRoom}</li>
                        <li class="list-group-item">Где: ${room.adressGameRoom}</li>
                        <li class="list-group-item">Ожидается игроков: ${room.countPeople}</li>
                    </ul>

                    <div class="card-footer">

                        <#if room.user.id == currentUserId>
                            <a class="btn btn-primary"
                               href="gamerooms/${room.idGameRoom}/edit">
                                Редактировать </a>
                        </#if>

                        <#if !isAdmin>
                            <a class="btn btn-primary"
                               href="">
                                Подписаться </a>
                        </#if>

                        <#if isAdmin>
                            <a class="btn btn-primary"
                               href="/gamerooms/delete/${room.idGameRoom}">
                                Удалить </a>
                        </#if>

                    </div>

                </div>
            </#items>
            <#else>
            <p>Игротек нет, станьте её создателем.</p>
        </#list>
    </div>
</@c.page>