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
    <div class="container">
        <div class="row">
            <div class="border col-md-6">
                <div class="text-center">
                    <#if gamesRoom.filenameGameRoom??>
                        <p><img src="/roomimg/${gamesRoom.filenameGameRoom}" height=300px, width=300px  class="mr-3"></p>
                    </#if>

                </div>
                <p> <button type="button" class="btn btn-primary">Подписаться</button></p>
            </div>
            <div class="border col">
                <h2 class="text-center">${gamesRoom.nameGameRoom}</h2>
                <div class="row">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item list-group-item-dark">Когда: ${gamesRoom.dateGameRoom}</li>
                        <li class="list-group-item list-group-item-dark">В каком городе: ${gamesRoom.cityGameRoom}</li>
                        <li class="list-group-item list-group-item-dark">Где: ${gamesRoom.adressGameRoom}</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="border  col">

                <h6>Подписчики</h6>
                <div class="scroll-table">
                    <table>
                        <thead>
                        <tr>
                            <th width=5px scope="col">#</th>
                            <th scope="col">Никнейм</th>
                            <th width=5px scope="col">#</th>
                            <th scope="col">Никнейм</th>
                        </tr>
                        </thead>
                    </table>
                    <div class="scroll-table-body">
                        <table>
                            <tbody>
                            <div>
                                <tr>
                                    <th width=30px scope="row">1</th>
                                    <td>Mark</td>
                                    <th width=30px scope="row">2</th>
                                    <td>Игрок</td>
                                </tr>
                                <tr>
                                    <th width=10px scope="row">3</th>
                                    <td>Mark</td>
                                    <th width=10px scope="row">4</th>
                                    <td>Игрок</td>
                                </tr>
                                <tr>
                                    <th width=10px scope="row">5</th>
                                    <td>Mark</td>
                                    <th width=10px scope="row">6</th>
                                    <td>Игрок</td>
                                </tr>
                                <tr>
                                    <th width=10px scope="row">1</th>
                                    <td>Mark</td>
                                    <th width=10px scope="row">2</th>
                                    <td>Игрок</td>
                                </tr>
                                <tr>
                                    <th width=10px scope="row">1</th>
                                    <td>Mark</td>
                                    <th width=10px scope="row">2</th>
                                    <td>Игрок</td>
                                </tr>
                                <tr>
                                    <th width=10px scope="row">1</th>
                                    <td>Mark</td>
                                    <th width=10px scope="row">2</th>
                                    <td>Игрок</td>
                                </tr>
                                <tr>
                                    <th width=10px scope="row">1</th>
                                    <td>Mark</td>
                                    <th width=10px scope="row">2</th>
                                    <td>Игрок</td>
                                </tr>
                            </div>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="border col">
                <h8>Во что играем</h8>
                <div class="scroll-table">
                    <table>
                        <thead>
                        <tr>
                            <th width=5px scope="col">#</th>
                            <th>Название игры</th>
                        </tr>
                        </thead>
                    </table>
                    <div class="scroll-table-body">
                        <table>
                            <tbody>
                            <div>
                                <#list tableGames>
                                    <#items as game>
                                <tr>
                                            <th width=30px scope="row">${game?counter}</th>
                                            <td><a href="/tablegames/${game.idTableGames}">${game.nameTableGames}</td>
                                </tr>
                                </#items>
                                </#list>
                            </div>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="border col">
                <h5>Описание игротеки</h5>
                <p>${gamesRoom.discriptionGameRoom}</p>
            </div>
        </div>
    </div>
</@c.page>