<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample" xmlns="http://www.w3.org/1999/html">
    Добавить игротеку
</a>

<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control" name="nameGameRoom" placeholder="Название игротеки">
            </div>
            <div class="form-group">
                <input type="datetime-local" class="form-control" name="dateGameRoom" placeholder="Дата игротеки">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="cityGameRoom" placeholder="Город">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="adressGameRoom" placeholder="Адрес">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="discriptionGameRoom" placeholder="Описание">
            </div>
            <input type="hidden" class="form-control" name="_csrf" value="${_csrf.token}"/>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="filenameGameRoom" id="customFile">
                    <label class="custom-file-label" for="customFile">Выберите файл</label>
                </div>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Сохранить игротеку</button>
            </div>
        </form>
    </div>
</div>
