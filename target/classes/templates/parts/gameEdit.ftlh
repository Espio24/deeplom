<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
    Создать игру
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Создание игротеки</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" class="form-control" name="nameTableGames" placeholder="Название игры">
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" name="basecost" placeholder="Цена залога">
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" name="arcost" placeholder="Цена проката">
                    </div>
                    <div class="form-group">
                        <textarea rows="3" type="text" class="form-control" name="discriptionTableGames" placeholder="Описание игры"></textarea>
                    </div>

                    <input type="hidden" class="form-control" name="_csrf" value="${_csrf.token}"/>
                    <div class="form-group">
                        <div class="custom-file">
                            <input type="file" name="filenameTableGame" id="customFile">
                            <label class="custom-file-label" for="customFile">Выберите файл</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" name="minCountPlayers" placeholder="Минимум игроков">
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" name="maxCountPlayers" placeholder="Максимум игроков">
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" name="minTime" placeholder="Минимальное время игры">
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" name="maxTime" placeholder="Максимальное время игры">
                    </div>
                    <div class="form-group">

                        <div>
                            <div class="mb-1">Динамичность</div>
                            <#list tags>
                                <#items as tag>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input class="custom-control-input" id="${tag.idTag}1" type="radio" name="dynamics"
                                               value="${tag.idTag}">
                                        <label class="custom-control-label" for="${tag.idTag}1">${tag.nameTag}</label>
                                    </div>
                                </#items>

                            </#list>

                        </div>
                    </div>

                    <div class="form-group">

                        <div>
                            <div class="mb-1">Тип игры</div>

                            <#list type>
                                <#items as type>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input class="custom-control-input" id="${type.idType}2" type="radio" name="type"
                                               value="${type.idType}">
                                        <label class="custom-control-label" for="${type.idType}2">${type.nameType}</label>
                                    </div>
                                </#items>

                            </#list>




                        </div>
                    </div>


                    <div class="form-group">

                        <div>
                            <div class="mb-1">Сложность</div>

                            <#list tags>
                                <#items as tag>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input class="custom-control-input" id="${tag.idTag}3" type="radio" name="complexity"
                                               value="${tag.idTag}">
                                        <label class="custom-control-label" for="${tag.idTag}3">${tag.nameTag}</label>
                                    </div>
                                </#items>

                            </#list>

                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="analysis" placeholder="Время изучения правил">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                <button type="submit" class="btn btn-primary">Сохранить игру</button>
            </div>
                </form>
        </div>
    </div>
</div>





