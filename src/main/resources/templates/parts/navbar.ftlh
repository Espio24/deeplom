<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-dark">
    <a class="navbar-brand bg-dark text-white" href="/">ВИгротеке</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse bg-dark" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link text-white" href="/gamerooms">Игротеки</a>
            </li>

            <li class="nav-item">
                <a class="nav-link text-white" href="/tablegames">Игры</a>
            </li>
            <#if !isAdmin>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/myorder/${id}">Мои заказы</a>
                </li>
            </#if>

            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link text-white" href="/admorder">Заказы</a>
                </li>
            </#if>

            <#if isAdmin>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Панель администратора
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/user">Список пользователей</a>
                    <a class="dropdown-item" href="/componentcheck">Проверка компонентов</a>
                    <a class="dropdown-item" href="/tags">Управление тегами</a>
                </div>
            </li>
            </#if>

        </ul>
        <#if !isAdmin>
        <div ><a class="text-white mr-3" href="/order/${id}">Корзина</a></div>
        </#if>
        <div ><a class="text-white mr-3" href="user/profile/${id}">${name}</a></div>
        <@l.logout />
    </div>
</nav>