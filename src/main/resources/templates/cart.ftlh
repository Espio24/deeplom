<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h3>Корзина</h3>
    <div class="container border">
        <div class="row">
            <div class="border col-md-6">
                <div class="row bg-white">
                    <div class="col-md-2">
                        <img class="mt-2" src="/staticimg/korzina.png" width=50px height=50px>
                    </div>
                    <div class="col">
                        <h6>Название игры</h6>
                        <p>
                            <small>Сумма залога: 500</small>
                            <small>Сумма аренды за день: 50</small>
                            <br>
                            <small>Дата выдачи: 19.07.2021</small>
                            <small>Дата возврата: 15.07.2021</small>
                        </p>

                    </div>
                    <button type="submit" class="btn btn-light"> <img src="/staticimg/cross.png" width=20px height=20px></button>
                </div>
                <div class="row bg-white mt-2">
                    <div class="col-md-2">
                        <img class="mt-2" src="/staticimg/korzina.png" width=50px height=50px>
                    </div>
                    <div class="col">
                        <h6>Название игры</h6>
                        <p>
                            <small>Сумма залога: 500</small>
                            <small>Сумма аренды за день: 50</small>
                            <br>
                            <small>Дата выдачи: 19.07.2021</small>
                            <small>Дата возврата: 15.07.2021</small>
                        </p>
                    </div>
                    <button type="submit" class=btn btn-light""> <img src="/staticimg/cross.png" width=20px height=20px></button>
                </div>
                <div class="row bg-white mt-2">
                    <div class="col-md-2">
                        <img class="mt-2" src="/staticimg/korzina.png" width=50px height=50px>
                    </div>
                    <div class="col">
                        <h6>Название игры</h6>
                        <p>
                            <small>Сумма залога: 500</small>
                            <small>Сумма аренды за день: 50</small>
                            <br>
                            <small>Дата выдачи: 19.07.2021</small>
                            <small>Дата возврата: 15.07.2021</small>
                        </p>
                    </div>
                    <button type="submit" class="btn btn-light"> <img src="/staticimg/cross.png" width=20px height=20px></button>
                </div>
            </div>
            <div class="border col">
                <div class="text-center">
                    <h1>Сумма заказа</h1>
                </div>
                <div class="text-center">
                    <h1>1500</h1>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Оформить заказ</button>
                </div>
            </div>
        </div>

    </div>

</@c.page>