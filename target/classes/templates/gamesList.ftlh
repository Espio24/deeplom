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

                </div>
            </#items>

        </#list>

    </div>
</@c.page>