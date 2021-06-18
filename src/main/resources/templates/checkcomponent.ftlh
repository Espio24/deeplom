<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">


<style type="text/css">
    .scroll-table-body {
        height: 450px;
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
    <h1>Наименование и серийный номер проверяемой игры</h1>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="row">
                    <div class="scroll-table">
                        <table>
                            <thead>
                            <tr>
                                <th width=7% scope="col">#</th>
                                <th width=55%>Наименование компонента</th>
                                <th width=20%>Состояние</th>
                                <th>Действие</th>
                            </tr>
                            </thead>
                        </table>
                        <div class="scroll-table-body">
                            <table>
                                <tbody>
                                <div>
                                    <tr>
                                        <th scope="row" width=7%>1</th>
                                        <td width=56%>Компонент 1</td>
                                        <td width=20%> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>2</th>
                                        <td width=56%>Компонент 2</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>3</th>
                                        <td width=55%>Компонент 3</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>4</th>
                                        <td width=55%>Компонент 4</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>5</th>
                                        <td width=55%>Компонент 5</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>6</th>
                                        <td width=55%>Компонент 6</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>7</th>
                                        <td width=55%>Компонент 7</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>8</th>
                                        <td width=55%>Компонент 8</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>9</th>
                                        <td width=55%>Компонент 9</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" width=7%>10</th>
                                        <td width=55%>Компонент 10</td>
                                        <td> <a href="#" class="btn btn-secondary btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#8722;</span></a> </td>
                                        <td>
                                            <p>
                                                <a href="#" class="btn btn btn-success btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10004;</span></a>
                                                <a href="#" class="btn btn btn-danger btn-lg active btn-sm" role="button" aria-pressed="true"><span class="badge badge-pill"> &#10060;</span></a>
                                            </p>
                                        </td>
                                    </tr>

                                </div>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <button type="submit" class="btn btn-primary"> Сохранить и перейти к описанию дефектов </button>
                </div>

            </div>
            <div class="col">
                <div class="row">
                    <img src="/staticimg/camera.jpg" height=500px width=500px>
                </div>
                <div class="row mt-2">
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Выберите игру из заказа
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Игра 1</a>
                            <a class="dropdown-item" href="#">Игра 2</a>
                            <a class="dropdown-item" href="#">Игра 3</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="custom-control custom-switch">
                        <input type="checkbox" class="custom-control-input" id="customSwitch1">
                        <label class="custom-control-label" for="customSwitch1">Скрыть проверенные компоненты</label>
                    </div>
                </div>
            </div>
        </div>
    </div>

</@c.page>