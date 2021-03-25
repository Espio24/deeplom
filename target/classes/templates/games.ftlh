<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">


<@c.page>


    <h1>${games.nameGame}</h1>

    <!--div class="media">

            <#if games.filename??>
                <img src="/imggame/${games.filename}" height=300px width=300 class="mr-3">
            </#if>


        <div class="media-body text-justify"> ${games.description}</div>
    </div-->

    <div class="card mx-auto" style="width: 18rem;">
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Колличество игроков ${games.minCountPlayers}-${games.maxCountPlayers}</li>
        </ul>
    </div>


</@c.page>