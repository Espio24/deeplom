<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">


<@c.page>
    <#include "parts/gameRoomEdit.ftlh">
    <div class="card-columns mt-2">
        <#list gamesroom>
            <#items as room>
                <div class="card">
                    <div class="card-header">
                       <h5 class="card-tittle">${room.nameGameRoom}</h5>
                    </div>

                    <div>
                        <#if room.filenameGameRoom??>
                            <img src="/roomimg/${room.filenameGameRoom}" height=300px class="card-img-top">
                        </#if>
                    </div>

                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Когда: ${room.dateGameRoom}</li>
                        <li class="list-group-item">В каком городе: ${room.cityGameRoom}</li>
                        <li class="list-group-item">Где: ${room.adressGameRoom}</li>
                    </ul>

                    <div class="card-footer">

                        <#if room.user.id == currentUserId>
                            <a class="btn btn-primary"
                               href="/user-gamerooms/${room.user.id}?toyLibrary=${room.idGameRoom}">
                                Редактировать </a>
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