<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<style type="text/css">
    .scroll-table-body {
        height: 100px;
        overflow-x: auto;
        margin-top: 0px;
        margin-bottom: 20px;
        border-bottom: 1px solid #eee;
    }
    .scroll-table table {
        width:100%;
        table-layout: fixed;
        border: none;
    }
    .scroll-table thead th {
        font-weight: bold;
        text-align: left;
        border: none;
        padding: 10px 15px;
        background: #d8d8d8;
        font-size: 14px;
        border-left: 1px solid #ddd;
        border-right: 1px solid #ddd;
    }
    .scroll-table tbody th {
        text-align: cen;
        border-left: 1px solid #ddd;
        border-right: 1px solid #ddd;
        padding: 10px 15px;
        font-size: 14px;
        vertical-align: top;
    }
    .scroll-table tbody td {
        text-align: left;
        border-left: 1px solid #ddd;
        border-right: 1px solid #ddd;
        padding: 10px 15px;
        font-size: 14px;
        vertical-align: top;
    }
    .scroll-table tbody tr:nth-child(even){
        background: #f3f3f3;
    }

    /* Стили для скролла */
    ::-webkit-scrollbar {
        width: 6px;
    }
    ::-webkit-scrollbar-track {
        box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    }
    ::-webkit-scrollbar-thumb {
        box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    }
</style>

<@c.page>
    <#include "parts/userEdit.ftlh">
    <div class="container">
        <div class="row">
            <div class="border col-md-6">
                <div class="text-center">
                    <#if users.filenameUser??>
                        <p><img src="/profileimg/${users.filenameUser}" height=300px, width=300px  class="mr-3"></p>
                    </#if>
                    <#if !users.filenameUser??>
                        <p><img src="/staticimg/user.jpg" height=300px, width=300px  class="mr-3"></p>
                    </#if>
                </div>
                <p> <button type="button" class="btn btn-primary">Подписаться</button> <button type="button" class="btn btn-primary">Написать сообщение</button> </p>
            </div>
            <div class="border col">
                <h2 class="text-center">${users.username}</h2>
                <h8>Игротеки пользователя</h8>
                <div class="scroll-table">
                    <table>
                        <thead>
                        <tr>
                            <th width=5px scope="col">#</th>
                            <th>Название игротеки</th>
                            <th>Количество человек</th>
                        </tr>
                        </thead>
                    </table>
                    <div class="scroll-table-body">
                        <table>
                            <tbody>
                            <div>
                                <#list gamesrooms>
                                    <#items as gameroom>
                                <tr>
                                    <th width=30px scope="row">${gameroom?counter}</th>
                                    <td><a href="/gamerooms/${gameroom.idGameRoom}">${gameroom.nameGameRoom}</a></td>
                                    <th>${gameroom.countPeople}</th>
                                </tr>
                                    </#items>
                                </#list>
                            </div>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="border  col-md-6">
                <div class="media">
                    <img src="/staticimg/achivments.png" height=50px, width=50px alt="альтернативный текст">
                    <img src="/staticimg/achivments.png" height=50px, width=50px alt="альтернативный текст">
                    <img src="/staticimg/achivments.png" height=50px, width=50px alt="альтернативный текст">
                    <img src="/staticimg/achivments.png" height=50px, width=50px alt="альтернативный текст">
                    <img src="/staticimg/achivments.png" height=50px, width=50px alt="альтернативный текст">
                </div>
            </div>
            <div class="border  col">
            </div>
        </div>
    </div>
</@c.page>

