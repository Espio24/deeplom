<#macro login path isRegisterForm>
    <div class="container">
        <div class="row">
            <#if !isRegisterForm>
                <div class="border border-dark col-md-6">
                    <div>
                        Тут у нас приветственное слово
                    </div>
                </div>
            </#if>
            <div class="border border-dark col">
                <div class="row">
                    <div class="border border-dark col">
                    <form action="${path}" method="post">
                        <div class="form-group ml-2">
                            <label for="exampleInputEmail1">Логин</label>
                            <input type="text" name="username" class="form-control" placeholder="User name" />
                        </div>
                        <div class="form-group ml-2">
                            <label for="exampleInputEmail1">Пароль</label>
                            <input type="password" name="password" class="form-control" placeholder="Password" />
                        </div>
                        <#if isRegisterForm>
                            <div class="form-group row ml-2">
                                <label for="exampleInputEmail1">Email</label>
                                <input type="email" name="email" class="form-control" placeholder="some@some.com" />
                            </div>

                                <label class="ml-2" for="exampleInputEmail1">Фамилия</label>
                                <input type="text" name="lastName" class="form-control ml-2" placeholder="Фамилия" />
                                <label class="ml-2" for="exampleInputEmail1">Имя</label>
                                <input type="text" name="firstName" class="form-control ml-2" placeholder="Имя" />
                                <label class="ml-2" for="exampleInputEmail1">Отчество</label>
                                <input type="text" name="secondName" class="form-control ml-2" placeholder="Отчество" />

                        </#if>
                        <button class="btn btn-primary ml-2" type="submit"><#if isRegisterForm>Create<#else>Sign In</#if></button>


                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <#if !isRegisterForm>
                            <p class="mt-2 ml-2">Впервые у нас? Тогда пройдите быструю регистрацию.</p>
                        </#if>
                        <#if !isRegisterForm><a class="btn btn-primary ml-2" href="/registration">Зарегестрироваться</a></#if>
                    </form>
                </div>


            </div>
        </div>

    </div>


</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit"><#if user??>Sign Out<#else>Log in</#if></button>
    </form>
</#macro>