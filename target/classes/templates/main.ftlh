<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h1>Лучшие игры по версии пользователей</h1>
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/staticimg/nemesis.png" class="d-block w-100" height=700px alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="text-white bg-dark">Немезида &#9733; 9.5/10</h5>
                    <p class="text-white bg-dark">Цена проката от 500р за день</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/staticimg/mansions.jpg" class="d-block w-100" height=700px alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="text-white bg-dark">Особняки безумия втоорая редакция. &#9733; 9.3/10</h5>
                    <p class="text-white bg-dark">Цена проката от 300р за день</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="/staticimg/Gloomhaven.png" class="d-block w-100" height=700px alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5 class="text-white bg-dark">Gloomhaven: Мрачная гавань &#9733; 9.2/10</h5>
                    <p class="text-white bg-dark">Цена проката от 450р за день</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="container border">
        <h1>Игротеки дня</h1>
        <div class="row">

            <div class="media mt-2">
                <p class="mr-2"><img src="/staticimg/user.jpg" class="mr-3" height=64px width=64px><br>
                    DM Виталя</p>
                <div class="media-body">
                    <h5 class="mt-0">Название игротеки</h5>
                    <p>Описание игротеки Описание игротеки Описание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротеки</p>
                    <small><b>Записавшихся людюей</b> 7/10 <b>Время проведения игротеки:</b> Сегодня 18:00 <b>Адрес</b> Пушкина 53</small>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="media mt-2">
                <p class="mr-2"><img src="/staticimg/user.jpg" class="mr-3" height=64px width=64px><br>
                    Вася 3000</p>
                <div class="media-body">
                    <h5 class="mt-0">Название игротеки</h5>
                    <p>Описание игротеки Описание игротеки Описание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротекиОписание игротеки</p>
                    <small><b>Записавшихся людюей</b> 7/10 <b>Время проведения игротеки:</b> Завтра 18:00 <b>Адрес</b> Пушкина 53</small>
                </div>
            </div>
        </div>
    </div>

</@c.page>