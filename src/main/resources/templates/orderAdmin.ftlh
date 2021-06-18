<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h1>Заказы</h1>
    <ul class="class="list-unstyled">
    <li class="media mt-2 border">
        <p class="mr-2"><img src="/staticimg/user.jpg" class="mr-3" height=64px width=64px><br>
            Фамилия<br>
            Длинное имя <br>
            Отчество</p>
        <div class="media-body">
            <div class="container border ">
                <div class="row">
                    <div class="col align-self-start">
                        <h5 class="mt-0">Номер заказа 4651231654865</h5>
                    </div>
                    <div class="col align-self-end">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Действия
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Подтвердить</a>
                                <a class="dropdown-item" href="#">Выдать</a>
                                <a class="dropdown-item" href="#">Принять</a>
                                <a class="dropdown-item" href="#">Проблема</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="list-unstyled">
                <li class="media mt-3">
                    <a class="mr-3" href="#">
                        <img src="/gamesimg/6c7f0c3c-2d9f-449e-854c-6da5c70cd439.ec7574fd-f4a8-4de6-9e3c-b1dd3446107a.monopoly-russia.png" height=64px width=64px class="mr-3" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="mt-0">Монополия</h5>
                        Серийный номер 89456319756319
                    </div>
                </li>
                <li class="media mt-3">
                    <a class="mr-3" href="#">
                        <img src="gamesimg/8fe31d1d-2b28-487a-96e0-dcfd163694ef.f6161de1-b445-4937-8a9e-5abe365787fe.s1200.jpg" height=64px width=64px class="mr-3" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="mt-0">Манчкин</h5>
                        Серийный номер 4898465497526
                    </div>
                </li>
            </ul>
            <small><b>Статус</b> ожидает подтверждения <b>Сумма заказа</b> 1000</small>
        </div>
    </li>
    <li class="media mt-2 border">
        <p class="mr-2"><img src="/staticimg/user.jpg" class="mr-3" height=64px width=64px><br>
            Фамилия<br>
            Длинное имя <br>
            Отчество</p>
        <div class="media-body">
            <div class="container border">
                <div class="row">
                    <div class="col align-self-start">
                        <h5 class="mt-0">Номер заказа 4651231654865</h5>
                    </div>
                    <div class="col align-self-end">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Действия
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Подтвердить</a>
                                <a class="dropdown-item" href="#">Выдать</a>
                                <a class="dropdown-item" href="#">Принять</a>
                                <a class="dropdown-item" href="#">Проблема</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ul class="list-unstyled">
                <li class="media mt-3">
                    <a class="mr-3" href="#">
                        <img src="/gamesimg/6c7f0c3c-2d9f-449e-854c-6da5c70cd439.ec7574fd-f4a8-4de6-9e3c-b1dd3446107a.monopoly-russia.png" height=64px width=64px class="mr-3" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="mt-0">Монополия</h5>
                        Серийный номер 89456319756319
                    </div>
                </li>
                <li class="media mt-3">
                    <a class="mr-3" href="#">
                        <img src="gamesimg/8fe31d1d-2b28-487a-96e0-dcfd163694ef.f6161de1-b445-4937-8a9e-5abe365787fe.s1200.jpg" height=64px width=64px class="mr-3" alt="...">
                    </a>
                    <div class="media-body">
                        <h5 class="mt-0">Манчкин</h5>
                        Серийный номер 4898465497526
                    </div>
                </li>
            </ul>
            <small><b>Статус</b> ожидает подтверждения <b>Сумма заказа</b> 1000</small>
        </div>
    </li>
    </ul>
</@c.page>